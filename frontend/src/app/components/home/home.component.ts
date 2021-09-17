import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ProductService } from 'src/app/shared/services/product.service';
import { SearchService } from 'src/app/shared/services/search.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  localSearchState: boolean = false;
  searchArray: any[] = []
  products: any = []
  products2: any = []
  constructor(private router: Router, private productService: ProductService, private searchService: SearchService) { }

  ngOnInit(): void {
    this.localSearchState = false
    this.getProducts1()
    this.getProducts2()
    this.searchService.resultStatus.subscribe((result) => {
      this.searchArray = result
      console.log(this.searchArray)
    })

    this.searchService.searchStatus.subscribe((result) => {
      console.log('result from home component', result);
      this.localSearchState = result
    })

  }

  getProducts1() {
    this.productService.homeProducts().subscribe(response => this.products = response)
  }

  getProducts2() {
    this.productService.homeProducts2().subscribe(response => this.products2 = response)
  }

  update() {
    console.log(this.localSearchState);
    this.searchService.updateStatus(!this.localSearchState)
  }

  showDetails(id: number) {

    this.router.navigateByUrl("/product/" + id)
  }

}