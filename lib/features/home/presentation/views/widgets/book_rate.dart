import 'package:bookapp/core/utility/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.center, required this.bookRating, required this.count});

  MainAxisAlignment mainAxisAlignment;
  final  num bookRating;
  final num count;
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.w,
        ),
         Text(
          bookRating.toString(),
          style: AppStyle.textStyle16W500,
        ),
        SizedBox(
          width: 5.w,
        ),
        Opacity(
            opacity: .5,
            child: Text(
              '(${count.toString()})',
              style: AppStyle.textStyle14Normal
                  .copyWith(color: const Color.fromARGB(255, 204, 202, 202)),
            )),
      ],
    );
  }
}
