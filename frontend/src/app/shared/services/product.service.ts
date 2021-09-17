import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { UserService } from './User.service';

@Injectable({ providedIn: 'root' })
export class ProductService {
    getCartCount() {
        throw new Error('Method not implemented.');
    }
    constructor(private httpClient: HttpClient, private userService: UserService) { }

    createProduct(product: any) {
        return this.httpClient.post(environment.serverUrl + "/createProduct", product)
    }

    searchProducts(params: any = 0) {
        console.log('inside service', params.category_id)
        return this.httpClient.get(environment.serverUrl + "/searchProducts/" + params.category_id)
    }

    deleteProduct(id: number) {
        return this.httpClient.delete(environment.serverUrl + "/deleteProduct/" + id)
    }

    updateProduct(newProduct: any) {
        return this.httpClient.put(environment.serverUrl + "/updateProduct/" + newProduct.id, newProduct)
    }

    countProducts() {
        return this.httpClient.get(environment.serverUrl + "/countProducts")
    }

    getCategories() {
        return this.httpClient.get(environment.serverUrl + "/getCategories")
    }

    homeProducts() {
        return this.httpClient.get(environment.serverUrl + "/homeProducts")
    }

    homeProducts2() {
        return this.httpClient.get(environment.serverUrl + "/homeProducts2")
    }

    getProductById(id: number) {
        return this.httpClient.get(environment.serverUrl + "/getProductById/" + id)
    }

    addToCart(product_id: number) {
        return this.httpClient.post(environment.serverUrl + '/addToCart', { product_id, user_id: this.userService.loggedUser.id })
    }

    addToFavorites(product_id: number) {
        return this.httpClient.post(environment.serverUrl + '/addToFavorites', { product_id, user_id: this.userService.loggedUser.id })
    }

    getProductsFromUserFavorites() {
        return this.httpClient.get<any[]>(environment.serverUrl + '/getProductsFromUserFavorites/' + this.userService.loggedUser.id)
    }

    removeFromFavorites(product_id: number) {
        return this.httpClient.delete(environment.serverUrl + '/removeFromFavorites/' + product_id + '/' + this.userService.loggedUser.id)
    }

    removeFromCart(product_id: number) {
        return this.httpClient.delete(environment.serverUrl + '/remove/' + product_id + '/' + this.userService.loggedUser.id)
    }

    buyFromCart() {
        return this.httpClient.put(environment.serverUrl + "/buyFromCart/" + this.userService.loggedUser.id, {})
    }

    getProductsFromUserCart() {
        return this.httpClient.get<any[]>(environment.serverUrl + '/getProductsFromUserCart/' + this.userService.loggedUser.id)
    }

    allBoughtProducts() {
        return this.httpClient.get(environment.serverUrl + "/allBoughtProducts/" + this.userService.loggedUser.id)
    }

    clearBought() {
        return this.httpClient.delete(environment.serverUrl + "/clearBought/" + this.userService.loggedUser.id)
    }

    countCart() {
        return this.httpClient.get(environment.serverUrl + "/getCartCount/" + this.userService.loggedUser.id)
    }

    countFavorite() {
        return this.httpClient.get(environment.serverUrl + "/getFavoritesCount/" + this.userService.loggedUser.id)
    }

    searchService(name: any) {
        return this.httpClient.get(environment.serverUrl + '/search-bar-products/' + name)
    }
}