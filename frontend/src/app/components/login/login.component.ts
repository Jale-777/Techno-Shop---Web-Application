import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { UserService } from 'src/app/shared/services/User.service';
import { BadgeService } from 'src/app/shared/services/badge.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  email: string = '';
  password: string = '';

  constructor(private router: Router, private toastrService: ToastrService, private userService: UserService, private badgeService: BadgeService) { }

  ngOnInit(): void {
  }

  login() {
    this.userService.loginUser(this.email, this.password).subscribe(response => {
      if (!response.id) {
        this.toastrService.error("Pogrešan email ili šifra!")
      } else {
        if (response.status == "BAN") {
          this.toastrService.error("Vi ste banovani")
        }
        else {
          this.toastrService.success("Uspješno ste prijavljeni.")
          delete response.password;
          localStorage.setItem("loggedUser", JSON.stringify(response))
          this.router.navigateByUrl("home")
          this.badgeService.updateBadge();
        }
      }
    }
    )
  }
}