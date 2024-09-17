import 'package:flutter/material.dart';
import 'package:shop_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 238),
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        toolbarHeight: 70,
        leadingWidth: MediaQuery.of(context).size.width * 0.5,
        leading: const CustomLeading(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, size: 30),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PromotionalCard(),
            SizedBox(height: 20),
            CategorieTitle(),
            CategoriesGroup(),
            SizedBox(height: 20),
            ProductsGrid(),
          ],
        ),
      )
    );
  }
}
