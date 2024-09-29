import 'package:bookapp/core/utility/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      const  Icon(FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),),
        SizedBox(width: 6.w,),
     const   Text('4.8',style: AppStyle.textStyle16W500,),
     SizedBox(width: 5.w,),
      const  Text('(245)',style: AppStyle.textStyle14Normal,),
      ],
    );
  }
}