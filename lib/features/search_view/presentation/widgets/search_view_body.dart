import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/search_view/presentation/widgets/custom_text_search.dart';
import 'package:bookapp/features/search_view/presentation/widgets/search_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const CustomSearchText(),
        SizedBox(height: 20.h,),
    const    Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.0),
          child:  Text('search result',style: AppStyle.textStyle18W600,),
        ),
        SizedBox(height: 20.h,),
      const Expanded(child: SearchListView())
      ],
    );
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder ( 
        
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
          return const SearchItems();
      
        }),
    );
  }
}