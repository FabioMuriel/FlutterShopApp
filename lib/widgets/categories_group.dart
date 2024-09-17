import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/providers.dart';
import 'package:shop_app/widgets/categorie_tab.dart';

class CategoriesGroup extends StatelessWidget {
  
  const CategoriesGroup({super.key});

  @override
  Widget build(BuildContext context) {

    CategoriesProvider categoriesProvider = Provider.of<CategoriesProvider>(context, listen: false);
    ProductsProvider productsProvider = Provider.of<ProductsProvider>(context, listen: false);
    categoriesProvider.getCategories();

    return Consumer<CategoriesProvider>(
      builder: (context, categoriesProvider, child) => Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesProvider.categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                categoriesProvider.selectCategory(categoriesProvider.categories[index]);
                productsProvider.getProductsByCategory(categoriesProvider.categories[index]);
              },
              child: CategorieTab(selected: categoriesProvider.selectedCategory, title: categoriesProvider.categories[index]),
            );
          },
        ),
      ),
    );
  }
}