import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { ProductService } from 'src/app/shared/services/product.service';
import { BadgeService } from 'src/app/shared/services/badge.service';

@Component({
  selector: 'app-favorite',
  templateUrl: './favorite.component.html',
  styleUrls: ['./favorite.component.scss']
})
export class FavoriteComponent implements OnInit {

  products: any[] = []

  constructor(private productService: ProductService, private toastr: ToastrService, private badgeService: BadgeService) { }

  ngOnInit(): void {
    this.getProductsForUserFavorites()
  }

  getProductsForUserFavorites() {
    this.productService.getProductsFromUserFavorites().subscribe((response: any[]) => this.products = response)
  }

  removeFromFavorites(id: any) {
    this.productService.removeFromFavorites(id).subscribe(
      success => {
        this.toastr.success("Proizvod obrisan iz omiljenih")
        this.getProductsForUserFavorites()
        this.badgeService.updateBadge();
      }
    )
  }
}