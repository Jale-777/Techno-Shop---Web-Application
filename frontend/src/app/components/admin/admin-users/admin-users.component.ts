import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { UserService } from 'src/app/shared/services/User.service';

@Component({
  selector: 'app-admin-users',
  templateUrl: './admin-users.component.html',
  styleUrls: ['./admin-users.component.scss']
})
export class AdminUsersComponent implements OnInit {


  users: any = []
  constructor(private userService: UserService, private toastr: ToastrService) { }

  ngOnInit(): void {
    this.getAllUsers()
  }


  getAllUsers() {
    this.userService.getUsers().subscribe(response => this.users = response)
  }

  banUser(user: any) {
    this.userService.banUser(user).subscribe(
      response => {
        this.toastr.success("Korisnik banovan!")
        this.getAllUsers()
      }
    )
  }

  activeUser(user: any) {
    this.userService.activeUser(user).subscribe(
      response => {
        this.toastr.success("Korisnik aktiviran!")
        this.getAllUsers()
      }
    )
  }
}