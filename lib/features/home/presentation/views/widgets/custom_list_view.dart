import 'package:bookapp/core/utility/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.bottomRight,
      height: 250.h,
      width: 170.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image:const DecorationImage(image: AssetImage(Assets.imagesTestImage,),fit: BoxFit.fill)
      ),
    );
  }
}