import 'package:flutter/material.dart';

class CustomLeading extends StatelessWidget {
  const CustomLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: 100,
      child: const Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/happy-business-man-standing-smiling_155003-13336.jpg?t=st=1726599762~exp=1726603362~hmac=44174dfb55b6f4040a677caa34d8f191b65561b605fee5038424be48ef5e829b&w=1380'),
          ),
          SizedBox(width: 10),
          Text('Hi, Fabio', style: TextStyle(fontFamily: 'VarelaRound', fontSize: 17, fontWeight: FontWeight.bold))
        ],
      )
    );
  }
}