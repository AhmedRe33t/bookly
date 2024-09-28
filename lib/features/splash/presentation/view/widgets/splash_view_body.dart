import 'package:bookapp/core/utility/app_assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      

            children: [
              Image(image: AssetImage(Assets.imagesLogo)),
              SizedBox(height: 10,),
               Text('Read free books',
               textAlign: TextAlign.center,)
            ],
    );
  }
}