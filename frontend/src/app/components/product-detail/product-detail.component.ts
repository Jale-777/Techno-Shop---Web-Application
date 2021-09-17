import { AfterViewInit, Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { ProductService } from 'src/app/shared/services/product.service';
import { UserService } from 'src/app/shared/services/User.service';
import { BadgeService } from 'src/app/shared/services/badge.service';

@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.scss']
})
export class ProductDetailComponent implements OnInit, AfterViewInit {

  imageToDisplay: any
  productDetail: any
  constructor(private productService: ProductService,
    private router: ActivatedRoute,
    private route: Router,
    private userService: UserService,
    private toastr: ToastrService,
    private badgeService: BadgeService
  ) { }

  ngAfterViewInit(): void {
    this.imageToDisplay = this.productDetail.defaultImage
  }

  ngOnInit(): void {
    const id = this.router.snapshot.params.id
    this.getDetails(id)
  }

  getDetails(id: number) {
    this.productService.getProductById(id).subscribe(response => this.productDetail = response);
  }

  addToCart(id: number) {
    if (!this.userService.loggedUser.id) {
      this.route.navigateByUrl("login")
    }
    this.productService.addToCart(id).subscribe(response => {
      this.toastr.success("Produkt dodan u korpu")
      this.badgeService.updateBadge();
    })
  }

  addToFavorites(id: number) {
    if (!this.userService.loggedUser.id) {
      this.route.navigateByUrl("login")
    }
    this.productService.addToFavorites(id).subscribe(response => {
      this.toastr.success("Produkt dodan u omiljene");
      this.badgeService.updateBadge();
    })
  }

  changePicture(picture: any) {
    if (picture === "defaultImage") this.imageToDisplay = this.productDetail.defaultImage;
    else if (picture == "image1") this.imageToDisplay = this.productDetail.image1;
    else if (picture == "image2") this.imageToDisplay = this.productDetail.image2;
    else if (picture == "image3") this.imageToDisplay = this.productDetail.image3;
  }
}