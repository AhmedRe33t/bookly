import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'The Jungle Book',
          style: AppStyle.textStyle30Normal,
        ),
        SizedBox(
          height: 6.h,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
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
        ),
      ],
    );
  }
}
