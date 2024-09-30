import 'package:bookapp/core/api/dio_consumer.dart';
import 'package:bookapp/features/home/presentation/views/cubit/user_cubit.dart';
import 'package:bookapp/core/repositories/user_repository.dart';
import 'package:bookapp/features/detailes/presentation/view/details_view.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:bookapp/features/splash/presentation/view/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/homeView',
    builder: (context, state) => BlocProvider(
      create: (context) => UserCubit(UserRepository(api: DioConsumer(dio: Dio()))),
      child: const HomeView(),
    ),
  ),
  GoRoute(
    path: '/detaliesView',
    builder: (context, state) => const DetailsView(),
  ),
]);
