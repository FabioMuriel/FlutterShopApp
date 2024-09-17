import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/providers.dart';
import 'package:shop_app/widgets/products_card.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    ProductsProvider productsProvider = Provider.of<ProductsProvider>(context, listen: false);
    productsProvider.getProducts();

    return Expanded(
      child: Consumer<ProductsProvider>(
        builder: (context, provider, child) => GridView.builder(
          itemCount: provider.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            crossAxisSpacing: 15,
            mainAxisSpacing: 25
          ),
          itemBuilder: (context, index) {
            if(provider.products.isEmpty)
            {
              return const Center(child: CircularProgressIndicator());
            }
            return ProductCard(
              image: provider.products[index].image,
              title: provider.products[index].title,
              price: provider.products[index].price
            );
          },
        )
      )
    );
  }
}