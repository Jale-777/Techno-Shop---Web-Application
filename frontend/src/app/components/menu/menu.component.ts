import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { UserService } from 'src/app/shared/services/User.service';
import { BadgeService } from 'src/app/shared/services/badge.service';
import { SearchService } from 'src/app/shared/services/search.service';
import { FormControl, FormGroup } from '@angular/forms';
import { ProductService } from 'src/app/shared/services/product.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.scss']
})
export class MenuComponent implements OnInit {

  numberOfCartProducts: number = 0;
  allFavoritesProducts: number = 0;
  searchMode: boolean = true
  target: string = ''
  form = new FormGroup({
    searchInput: new FormControl('')
  })

  constructor(private productService: ProductService, private searchService: SearchService, public userService: UserService, private toastr: ToastrService, private router: Router, private badgeService: BadgeService) { }

  ngOnInit(): void {
    this.badgeCart();
    this.badgeFavorite();
  }

  get searchInput() {
    return this.form.get('searchInput');
  }

  logout() {
    localStorage.removeItem("loggedUser")
    this.toastr.success("Uspjesno ste se odjavili")
    this.badgeService.updateBadge();
  }

  showProfile(id: number) {
    this.router.navigateByUrl("/profile/" + id)
  }

  badgeCart() {
    this.badgeService.badgeCart.subscribe(badgeCart => {
      this.numberOfCartProducts = badgeCart.numberOfCartProducts;
    })
  }

  badgeFavorite() {
    this.badgeService.badgeFavorite.subscribe(badgeFavorite => {
      this.allFavoritesProducts = badgeFavorite.allFavoritesProducts;
    })
  }

  toggleSearchMode() {
    console.log(this.searchMode)
    this.searchService.updateStatus(true)
  }

  search() {
    this.target = this.searchInput?.value.toUpperCase()
    if (!this.target) {
      this.target = '...'

    }
    this.productService.searchService(this.target).subscribe((result: any) => {
      this.searchService.sendResults(result)
    })
  }

  removeSearch() {
    this.searchService.updateStatus(false)
  }
}