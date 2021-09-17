import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { ProductService } from 'src/app/shared/services/product.service';
import { UserService } from 'src/app/shared/services/User.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  userInfo: any = {}
  boughtProducts: any = []

  constructor(
    private userService: UserService,
    private router: ActivatedRoute,
    private productService: ProductService,
    private toastr: ToastrService) { }

  ngOnInit(): void {
    const id = this.router.snapshot.params.id
    this.getUser(id)
    this.getBoughtProducts()
  }

  getUser(id: number) {
    this.userService.getUserInfo(id).subscribe(response => {
      this.userInfo = response;
    })
  }

  getBoughtProducts() {
    this.productService.allBoughtProducts().subscribe(response => {
      this.boughtProducts = response
    })
  }

  clearBought() {
    this.productService.clearBought().subscribe(response => {
      this.toastr.success('Uspješno obrisani svi kupljeni proizvodi')
      this.getBoughtProducts()
    })
  }
}