
import 'package:flutter/material.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems(
      {super.key, required this.width, required this.high, required this.imageUrl});
  final double width;
  final double high;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        alignment: Alignment.bottomRight,
        height: high,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
                image: NetworkImage(imageUrl),
          
                fit: BoxFit.fill)),
      ),
    );
  }
}
