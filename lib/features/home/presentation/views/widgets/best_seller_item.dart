import 'package:bookapp/core/services/navigation.dart';
import 'package:bookapp/core/utility/app_assets.dart';
import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewIteams extends StatelessWidget {
  const BestSellerListViewIteams({super.key, required this.books});
 final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       customNavigation(context, path: '/detaliesView',extra:books );
      },
      child: SizedBox(
        height: 150.h,
        child: Row(
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CachedNetworkImage(imageUrl: books.volumeInfo!.imageLinks!.thumbnail??''),
            )),
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child:  Text(books.volumeInfo!.title!
                      ,
                      style: AppStyle.textStyle20Normal,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(books.volumeInfo!.authors![0],
                      style: AppStyle.textStyle14Normal.copyWith(
                          color: const Color.fromARGB(255, 236, 223, 223))),
                  Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: AppStyle.textStyle20Normal
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRate(bookRating: books.volumeInfo!.averageRating??0, count: books.volumeInfo!.ratingsCount??0,)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
