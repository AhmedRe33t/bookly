import 'package:bookapp/core/routes/app_routes.dart';
import 'package:bookapp/core/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp.router(
            theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: AppColors.KPrimaryColr,
                textTheme: GoogleFonts.montserratAlternatesTextTheme(
                    ThemeData.dark().textTheme)),
            debugShowCheckedModeBanner: false,
           routerConfig: router,
          );
        });
  }
}
