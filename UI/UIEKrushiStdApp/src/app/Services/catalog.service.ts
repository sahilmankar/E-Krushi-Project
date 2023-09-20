import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Category } from '../Models/category';
import { Product } from '../Models/product';
import { ProductDetail } from '../Models/productDetail';

@Injectable({
  providedIn: 'root',
})
export class CatalogService {
  constructor(private httpClient: HttpClient) {}

  getCategories(): Observable<Category[]> {
    let url = 'http://localhost:5288/api/categories';
    return this.httpClient.get<Category[]>(url);
  }
  getProducts(): Observable<Product[]> {
    let url = 'http://localhost:5288/api/products';
    return this.httpClient.get<Product[]>(url);
  }
  getProductDetails(productId:number): Observable<ProductDetail> {
    let url = 'http://localhost:5288/api/products/details/'+productId;
    return this.httpClient.get<ProductDetail>(url);
  }
  getProductsByCategory(categoryId:string): Observable<Product[]> {
    let url = 'http://localhost:5288/api/products/category/'+categoryId;
    return this.httpClient.get<Product[]>(url);
  }
  getSimilarProducts(productId:number): Observable<Product[]> {
    let url = 'http://localhost:5288/api/products/similar/'+productId;
    return this.httpClient.get<Product[]>(url);
  }
  getSearchedProducts(searchString:string): Observable<Product[]> {
    let url = 'http://localhost:5288/api/products/search/'+searchString;
    return this.httpClient.get<Product[]>(url);
  }
  getProductPriceBySize(productId: number, size: string): Observable<number> {
    let url =
      'http://localhost:5288/api/Products/price/' + productId + '/' + size;
    return this.httpClient.get<number>(url);
  }
}
