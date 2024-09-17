import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {

  String urCategory = 'https://fakestoreapi.com/products/categories';

  Dio client = Dio();
  List<String> categories = [];
  String selectedCategory = 'All';

  Future<void> getCategories() async {
    try {
      final response = await client.get(urCategory);
      categories = List<String>.from(response.data);
      categories.insert(0, 'All');

      for (int i = 0; i < categories.length; i++) {
        categories[i] = categories[i][0].toUpperCase() + categories[i].substring(1);
        int index = categories[i].indexOf(' ');
        if (index != -1) {
          categories[i] = categories[i].substring(0, index);
        }
      }

      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  void selectCategory(String category) {
    selectedCategory = category;
    notifyListeners();
  }

}