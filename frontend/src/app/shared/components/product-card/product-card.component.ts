import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-product-card',
  templateUrl: './product-card.component.html',
  styleUrls: ['./product-card.component.scss']
})
export class ProductCardComponent implements OnInit {

  @Input() cart = false
  @Input() favorite = false
  @Input() product: any = {}

  @Output() remove = new EventEmitter()

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

  showDetails(id: number) {
    this.router.navigateByUrl("/product/" + id)
  }

  removeEmit(event: any) {
    event.stopPropagation();
    this.remove.emit(this.product.id)
  }
}