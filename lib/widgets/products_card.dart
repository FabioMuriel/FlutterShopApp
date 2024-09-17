import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, 
    required this.image, 
    required this.title, 
    required this.price,
  });

  final String image;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontFamily: 'VarelaRound', fontSize: 16),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis
                  ),
                  const SizedBox(height: 2),
                  Text(
                    price.toString(),
                    style: const TextStyle(fontFamily: 'VarelaRound', fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}