import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from 'src/app/components/profile/User.module';
import { environment } from 'src/environments/environment';

@Injectable({ providedIn: 'root' })
export class UserService {
    constructor(private httpClient: HttpClient) {
    }

    getUserInfo(id: number) {
        console.log(id)
        return this.httpClient.get<any[]>(environment.serverUrl + "/getUserById/" + id)
    }

    registerUser(user: User) {
        return this.httpClient.post(environment.serverUrl + "/registration", user)
    }

    loginUser(email: string, password: string) {
        return this.httpClient.post<User>(environment.serverUrl + "/login", { email, password })
    }

    get loggedUser() {
        return JSON.parse(localStorage.getItem("loggedUser") || "{}") || new User()
    }

    getUsers() {
        return this.httpClient.get(environment.serverUrl + "/getAllUsers")
    }

    banUser(user: any) {
        return this.httpClient.put(environment.serverUrl + "/banUser/" + user.id, user)
    }

    activeUser(user: any) {
        return this.httpClient.put(environment.serverUrl + "/activeUser/" + user.id, user)
    }

    countUsers() {
        return this.httpClient.get(environment.serverUrl + "/countUsers")
    }
}