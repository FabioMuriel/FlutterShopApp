import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';

class ProductsProvider extends ChangeNotifier
{
  Dio client = Dio();
  String productUrl = 'https://fakestoreapi.com/products';
  List<ProductModel> products = [];
  List<ProductModel> productsPreCargued = [];

  Future<void> getProducts() async
  {
    try
    {
      final response = await client.get(productUrl);
      products = List<ProductModel>.from(response.data.map((product) => ProductModel.fromJson(product)));
      productsPreCargued = List<ProductModel>.from(response.data.map((product) => ProductModel.fromJson(product)));
      notifyListeners();
    }
    catch (e)
    {
      rethrow;
    }
  }

  void getProductsByCategory(String category)
  {
    products = productsPreCargued;
    if (category == 'All') 
    {
      return notifyListeners();
    } else if (category == 'Electronics') {
      category = 'electronics';
    } else if (category == 'Jewelery') {
      category = 'jewelery';
    } else if (category == "Men's") {
      category = "men's clothing";
    } else if (category == "Women's") {
      category = "women's clothing";
    }

    products = products.where((product) => product.category == category).toList();
    notifyListeners();
  }

  
}