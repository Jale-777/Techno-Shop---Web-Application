import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { ProductsComponent } from './components/products/products.component';
import { CartComponent } from './components/cart/cart.component';
import { FavoriteComponent } from './components/favorite/favorite.component';
import { LoginComponent } from './components/login/login.component';
import { MenuComponent } from './components/menu/menu.component';
import { FooterComponent } from './components/footer/footer.component';
import { ProfileComponent } from './components/profile/profile.component';
import { AboutComponent } from './components/about/about.component';
import { ContactComponent } from './components/contact/contact.component';
import { RegisterComponent } from './components/register/register.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ToastrModule } from 'ngx-toastr';
import { AdminComponent } from './components/admin/admin.component';
import { ProductCardComponent } from './shared/components/product-card/product-card.component';
import { AdminProductsComponent } from './components/admin/admin-products/admin-products.component';
import { AdminUsersComponent } from './components/admin/admin-users/admin-users.component';
import { ProductDetailComponent } from './components/product-detail/product-detail.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ProductsComponent,
    CartComponent,
    FavoriteComponent,
    LoginComponent,
    MenuComponent,
    FooterComponent,
    ProfileComponent,
    AboutComponent,
    ContactComponent,
    RegisterComponent,
    AdminComponent,
    ProductCardComponent,
    AdminProductsComponent,
    AdminUsersComponent,
    ProductDetailComponent
  ],
  imports: [
    ReactiveFormsModule,
    BrowserModule,
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    AppRoutingModule,
    ToastrModule.forRoot({
      timeOut: 5000,
      positionClass: "toast-bottom-right",
      preventDuplicates: true,
    }),
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }