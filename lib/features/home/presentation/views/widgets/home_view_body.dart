import 'package:bookapp/core/utility/app_assets.dart';
import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
      const CustomAppBar(),
       SizedBox(
        height: 250.h,
        child:const CustomListView()),
        SizedBox(height: 20.h,),
      const Align(
        alignment: Alignment.bottomLeft,
        child:  Text('Best Seller',style: AppStyle.textStyle18W600,)),
      const  BestSellerListViewIteams(),
      
        ],
      ),
    );
  }
}

class BestSellerListViewIteams extends StatelessWidget {
  const BestSellerListViewIteams({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Row(
        children: [
          Container(
            height: 150.h,
            width: 100.w,
            decoration:const BoxDecoration(
              image: DecorationImage(image: AssetImage(Assets.imagesTestImage))
            ),
          )
        ],
      ),
    );
  }
}