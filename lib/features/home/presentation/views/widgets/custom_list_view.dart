import 'package:bookapp/core/utility/app_assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems(
      {super.key, required this.width, required this.high});
  final double width;
  final double high;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: high,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              image: AssetImage(
                Assets.imagesTestImage,
              ),
              fit: BoxFit.fill)),
    );
  }
}
