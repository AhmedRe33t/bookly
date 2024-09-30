
import 'package:bookapp/core/widgets/custom_shimmer_category.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      padding:const  EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
        imageUrl: imageUrl,
        errorWidget:(context, url, error) =>const Icon(Icons.error) ,
        placeholder: (context, url) =>const CustomShimmerCategory(),
        ),
      )
    );
  }
}
