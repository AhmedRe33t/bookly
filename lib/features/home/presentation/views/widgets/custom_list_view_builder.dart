import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        clipBehavior: Clip.none,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomListViewItems(
            width: 170.w,
            high: 200.h,
          );
        });
  }
}
