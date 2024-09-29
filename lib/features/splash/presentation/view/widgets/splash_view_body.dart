import 'package:bookapp/core/services/navigation.dart';
import 'package:bookapp/core/utility/app_assets.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; //give me vlue 0 to 1
  late Animation<Offset> sliderTextAnimation; //get value
  late Animation<Offset> sliderImageAnimation; //get value

  @override
  void initState() {
    super.initState();
    _initSlidingAnimated();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      //customNavigateAndReplaceMent(context, path: '/homeView');
      Get.to(() => const HomeView(),
          transition: Transition.circularReveal,
          duration: const Duration(seconds: 2));
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
            animation: sliderImageAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: sliderImageAnimation,
                  child: Image(image: AssetImage(Assets.imagesLogo)));
            }),
        AnimatedBuilder(
          animation: sliderTextAnimation,
          builder: (context, _) {
            return SlideTransition(
                position: sliderTextAnimation,
                child: const Text(
                  'Read free books',
                  textAlign: TextAlign.center,
                ));
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  void _initSlidingAnimated() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    sliderTextAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
            .animate(animationController);
    sliderImageAnimation =
        Tween<Offset>(begin: const Offset(0, -4), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
