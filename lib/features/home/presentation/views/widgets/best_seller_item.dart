import 'package:bookapp/core/services/navigation.dart';
import 'package:bookapp/core/utility/app_assets.dart';
import 'package:bookapp/core/utility/app_style.dart';
import 'package:bookapp/features/home/presentation/views/widgets/book_rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewIteams extends StatelessWidget {
  const BestSellerListViewIteams({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       customNavigation(context, path: '/detaliesView');
      },
      child: SizedBox(
        height: 150.h,
        child: Row(
          children: [
            Container(
              height: 150.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.imagesTestImage))),
            ),
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: const Text(
                      'Harry Boter and goblet of fire',
                      style: AppStyle.textStyle20Normal,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text('J.K  rowiling',
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
                      BookRate()
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
