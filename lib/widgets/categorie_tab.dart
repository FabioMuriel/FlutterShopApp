import 'package:flutter/material.dart';

class CategorieTab extends StatelessWidget {
  const CategorieTab({
    super.key, 
    required this.selected,
    required this.title
  });

  final String selected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 10, top: 5, bottom: 5),
      width: 110,
      decoration: BoxDecoration(
        color: selected == title ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'VarelaRound', 
              fontSize: 16, 
              fontWeight: FontWeight.bold,
              color: selected == title ? Colors.white : Colors.black
            ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
