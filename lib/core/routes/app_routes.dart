import 'package:bookapp/core/repositories/user_repository.dart';
import 'package:bookapp/core/utility/service_lecator.dart';
import 'package:bookapp/features/detailes/presentation/cubit/detalies_cubit.dart';
import 'package:bookapp/features/detailes/presentation/view/details_view.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:bookapp/features/search_view/presentation/view/search_view.dart';
import 'package:bookapp/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/homeView',
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/detaliesView',
    builder: (context, state) => BlocProvider(
      create: (context) => DetaliesCubit(getIt.get<UserRepository>()),
      child:  DetailsView(bookModel:state.extra as BookModel ,),
    ),
  ),
  GoRoute(
    path: '/searchView',
    builder: (context, state) => const SearchView(),
  ),
]);
