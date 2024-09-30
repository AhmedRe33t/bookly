import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimelarBooksListView extends StatelessWidget {
  const SimelarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return CustomListViewItems(
              width: 100.w,
              high: 100.h, imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sportskeeda.com%2Fanime%2Fis-sasuke-dead-boruto-status-explained&psig=AOvVaw0q7OH0pjEmikp6Ar_jJCpU&ust=1727749334695000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOCZyf7N6YgDFQAAAAAdAAAAABAE',
            );
          }),
    );
  }
}
