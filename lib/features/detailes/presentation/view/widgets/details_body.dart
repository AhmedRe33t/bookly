import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/detailes/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 30.0),
      child:  Column(
        
        children: [
        const   CustomAppBarDetailes(),
           SizedBox(height: 50.h,),
         const CustomListViewItems(),
          SizedBox(height: 43.h,),
          const Text('The Jungle Book',
          style: AppStyle.textStyle30Normal,),
           SizedBox(height:6.h,),
            Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling',
                        style: AppStyle.textStyle20Normal.copyWith(
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 196, 184, 184)),),
            ),
          SizedBox(height:18.h,),
           BookRate(mainAxisAlignment: MainAxisAlignment.center,)
        ],
      ),
    );
  }
}

