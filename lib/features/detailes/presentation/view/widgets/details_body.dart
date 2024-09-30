import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/detailes/presentation/view/widgets/action_button.dart';
import 'package:bookapp/features/detailes/presentation/view/widgets/book_details_sections.dart';
import 'package:bookapp/features/detailes/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookapp/features/detailes/presentation/view/widgets/simelar_books_list_view.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomAppBarDetailes(),
                SizedBox(
                  height: 10.h,
                ),
               
                 BookDetailsSection(bookModel:bookModel ,),
                SizedBox(
                  height: 37.h,
                ),
                const BookAction(),
                Expanded(
                    child: SizedBox(
                  height: 50.h,
                )),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'you can also like ',
                      style: AppStyle.textStyle18W600,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                 SimelarBooksListView(bookModel: bookModel,)
              ],
            ),
          ),
        )
      ],
    );
  }
}
