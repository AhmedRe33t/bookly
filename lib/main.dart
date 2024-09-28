import 'package:bookapp/core/routes/app_routes.dart';
import 'package:bookapp/core/utility/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  AppColors.KPrimaryColr),
        debugShowCheckedModeBanner: false,
        routerConfig: router,
    );
  }
}