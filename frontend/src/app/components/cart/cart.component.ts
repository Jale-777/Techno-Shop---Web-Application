import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { ProductService } from 'src/app/shared/services/product.service';
import { BadgeService } from 'src/app/shared/services/badge.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})
export class CartComponent implements OnInit {

  cartProducts: any[] = []
  constructor(private productService: ProductService, private toastr: ToastrService, private badgeService: BadgeService) { }

  ngOnInit(): void {
    this.getProductsFromUser();
  }

  getProductsFromUser() {
    this.productService.getProductsFromUserCart().subscribe((response: any[]) => this.cartProducts = response)
  }

  removeFromCart(id: any) {
    this.productService.removeFromCart(id).subscribe(
      success => {
        this.toastr.success("Proizvod obrisan iz korpe")
        this.getProductsFromUser()
        this.badgeService.updateBadge();
      }
    )
  }

  buyFromCart() {
    this.productService.buyFromCart().subscribe(
      success => {
        this.getProductsFromUser()
        this.toastr.success('Odabrani proizvodi uspješno kupljeni')
        this.badgeService.updateBadge();
      }
    )
  }
}