import 'package:bookapp/core/routes/app_routes.dart';
import 'package:bookapp/core/utility/app_colors.dart';
import 'package:bookapp/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // MaterialApp.router(
    //    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  AppColors.KPrimaryColr),
    //     debugShowCheckedModeBanner: false,
    //     routerConfig: router,
    // );
    GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  AppColors.KPrimaryColr),
         debugShowCheckedModeBanner: false,
         home: const SplashView(),
    );
  }
}