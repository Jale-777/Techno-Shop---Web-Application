import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/shared/services/product.service';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.scss']
})
export class ProductsComponent implements OnInit {

  products: any = []
  categories: any = []
  filterCategory: any = [{ category_id: -1 }]
  activeCategory: number = 0
  constructor(private productService: ProductService) { }

  ngOnInit(): void {
    this.getProducts()
    this.getMake()
  }

  getProducts() {
    this.productService.searchProducts().subscribe(response => this.products = response)
  }

  getFilterProducts() {
    this.productService.getCategories().subscribe(response => this.filterCategory = response)
  }

  getMake() {
    this.productService.getCategories().subscribe(response => this.categories = response)
  }

  activatedCategory(category: any) {
    this.activeCategory = category.id
    console.log()
    this.productService.searchProducts({ category_id: category.id }).subscribe(response => {
      this.products = response
      console.log('products function', this.products)
    })
  }
}