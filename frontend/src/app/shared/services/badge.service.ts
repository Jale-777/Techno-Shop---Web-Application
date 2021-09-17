import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { ProductService } from './product.service';

@Injectable({
    providedIn: 'root'
})
export class BadgeService {
    private badgeSourceCart = new BehaviorSubject<any>({ numberOfCartProducts: 0 });
    private badgeSourceFavorite = new BehaviorSubject<any>({ allFavoritesProducts: 0 });

    badgeCart = this.badgeSourceCart.asObservable();
    badgeFavorite = this.badgeSourceFavorite.asObservable();


    constructor(private productService: ProductService) {
        this.updateBadge()
    }

    updateBadge() {
        this.productService.countCart().subscribe(
            success => {
                this.badgeSourceCart.next(success);
            }
        )
        this.productService.countFavorite().subscribe(
            success => {
                this.badgeSourceFavorite.next(success);
            }
        )
    }
}