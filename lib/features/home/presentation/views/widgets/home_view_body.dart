import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
        SizedBox(height: 20.h,),
      
    
        ],
      ),
    ),),
   const SliverFillRemaining(child:Padding(
     padding: EdgeInsets.symmetric(horizontal: 30),
     child: BestSellerListView(),
   ) ,)
      ],
    );
    
  }
}

