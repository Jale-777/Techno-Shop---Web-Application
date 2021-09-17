import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/shared/services/product.service';
import { UserService } from 'src/app/shared/services/User.service';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit {

  active = "products";
  numberOfProducts = 0
  numberOfUsers = 0
  constructor(private productService: ProductService, private userService: UserService) { }

  ngOnInit(): void {
    this.productService.countProducts().subscribe((response: any) => this.numberOfProducts = response["numberOfProducts"])
    this.userService.countUsers().subscribe((response: any) => this.numberOfUsers = response["numberOfUsers"])
  }
}