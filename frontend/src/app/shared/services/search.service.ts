import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})

export class SearchService {
  constructor() { }

  //search toggler
  private searchSource = new BehaviorSubject<any>(false);
  searchStatus = this.searchSource.asObservable();

  updateStatus(status: boolean) {
    this.searchSource.next(status);
  }
  ////////////////////
  private resultSource = new BehaviorSubject<any>(false);
  resultStatus = this.resultSource.asObservable();

  sendResults(status: boolean) {
    this.resultSource.next(status);
  }
}