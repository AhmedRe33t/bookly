import 'package:bookapp/core/repositories/user_repository.dart';
import 'package:bookapp/core/routes/app_routes.dart';
import 'package:bookapp/core/utility/app_colors.dart';
import 'package:bookapp/core/utility/service_lecator.dart';
import 'package:bookapp/features/home/presentation/cubit/best_seller_cubit.dart';
import 'package:bookapp/features/home/presentation/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp();
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
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => BestSellerCubit(getIt.get<UserRepository>())..featchBestSellerBooks(),
              ),
              BlocProvider(
                create: (context) => UserCubit(getIt.get<UserRepository>())..featchNewsBooksData(),
              ),
            ],
            child: MaterialApp.router(
              theme: ThemeData.dark().copyWith(
                  scaffoldBackgroundColor: AppColors.KPrimaryColr,
                  textTheme: GoogleFonts.montserratAlternatesTextTheme(
                      ThemeData.dark().textTheme)),
              debugShowCheckedModeBanner: false,
              routerConfig: router,
            ),
          );
        });
  }
}
