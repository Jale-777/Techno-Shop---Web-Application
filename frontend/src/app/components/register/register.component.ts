import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { UserService } from 'src/app/shared/services/User.service';
import { User } from '../profile/User.module';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {

  user: User = new User()

  constructor(private rotuer: Router, private userService: UserService, private toastrService: ToastrService) { }

  ngOnInit(): void {
  }

  login() {
    this.rotuer.navigateByUrl("login")
  }

  saveUser() {
    this.userService.registerUser(this.user).subscribe(response => {
      console.log(response)
      this.toastrService.success("Korisnički račun uspješno kreiran!")
      this.login()
    })
  }
}