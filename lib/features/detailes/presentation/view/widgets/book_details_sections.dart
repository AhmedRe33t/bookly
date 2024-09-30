import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomListViewItems(
                  width: 200.w,
                  high: 290.h, imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail??'',
                ),
                SizedBox(
                  height: 30.h,
                ),
         Align(
          alignment: Alignment.center,
           child: Text(
            
            bookModel.volumeInfo!.title!,
            style: AppStyle.textStyle20Normal,
            maxLines: 2,
            overflow:TextOverflow.ellipsis ,
                   ),
         ),
        SizedBox(
          height: 6.h,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo!.authors![0],
            style: AppStyle.textStyle20Normal.copyWith(
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 196, 184, 184)),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        BookRate(
          mainAxisAlignment: MainAxisAlignment.center,
           bookRating: bookModel.volumeInfo?.averageRating??0, 
           count: bookModel.volumeInfo?.ratingsCount??200,
        ),
      ],
    );
  }
}
