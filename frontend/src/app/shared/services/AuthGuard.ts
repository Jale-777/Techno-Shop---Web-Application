import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { UserService } from './User.service';

@Injectable({ providedIn: 'root' })
export class AuthGuard implements CanActivate {

    constructor(private userService: UserService, private router: Router, private toastr: ToastrService) { }

    canActivate() {
        if (!this.userService.loggedUser.id) {
            this.router.navigateByUrl("login")
            this.toastr.error("Za pristup korpi ili omiljenim proizvodima potrebno je kreirati korisnički račun")
            return false;
        }
        return true;
    }
}