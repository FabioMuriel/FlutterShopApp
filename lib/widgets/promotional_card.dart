import 'package:flutter/material.dart';

class PromotionalCard extends StatelessWidget {
  const PromotionalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.44,
            padding: const EdgeInsets.all(10),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Get Atractive', style: TextStyle(fontFamily: 'VarelaRound', fontSize: 25, fontWeight: FontWeight.bold)),
                Text('Discounts of', style: TextStyle(fontFamily: 'VarelaRound', fontSize: 25, fontWeight: FontWeight.bold)),
                Text('Upto 50%', style: TextStyle(fontFamily: 'VarelaRound', fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Stack(
              children: [
                Image.asset('assets/images/PromotionalBanner.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: const Text('Shop Now', style: TextStyle(fontFamily: 'VarelaRound', fontSize: 20, color: Colors.black)),
                    )
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}