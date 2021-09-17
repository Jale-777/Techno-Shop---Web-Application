import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { ProductService } from 'src/app/shared/services/product.service';
import { UserService } from 'src/app/shared/services/User.service';

@Component({
  selector: 'app-admin-products',
  templateUrl: './admin-products.component.html',
  styleUrls: ['./admin-products.component.scss']
})
export class AdminProductsComponent implements OnInit {

  categories: any = []
  newProduct: any = { category_id: -1 }
  products: any = []

  constructor(private productService: ProductService, private toastr: ToastrService) { }

  ngOnInit(): void {
    this.getCategories()
    this.getProducts()
  }

  saveProduct() {
    this.productService.createProduct(this.newProduct).subscribe(
      result => {
        this.toastr.success("Uspješno dodan proizvod")
        this.getProducts()
        this.clearForm()
        this.productService.countProducts()
      },
      err => {
        this.toastr.error("Greška prilikom dodavanja proizvoda! Provjerite podatke i pokušajte ponovo.")
      }
    )
  }

  clearForm() {
    this.newProduct = { category_id: -1, }
  }

  getCategories() {
    this.productService.getCategories().subscribe(response => {
      this.categories = response
    })
  }

  getProducts() {
    this.productService.searchProducts().subscribe(response => this.products = response)
  }

  deleteProduct(id: number) {
    console.log(id);
    this.productService.deleteProduct(id).subscribe((response: any) => {
      this.toastr.success(response.msg)
      this.getProducts()
    })
  }

  editProduct(item: any) {
    this.newProduct = { ...item }
  }
  updateProduct() {
    this.productService.updateProduct(this.newProduct).subscribe(
      result => {
        this.toastr.success("Objava uspješno uređena")
        this.getProducts()
        this.clearForm()
      },
      error => {
        this.toastr.error("Greška prilikom dodavanja proizvoda! Provjerite podatke i pokušajte ponovo.", error)
      })
  }
}