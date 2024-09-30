import 'package:bookapp/features/detailes/presentation/view/details_view.dart';
import 'package:bookapp/features/home/presentation/views/home_view.dart';
import 'package:bookapp/features/splash/presentation/view/splash_view.dart';
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
    builder: (context, state) => const DetailsView(),
  ),
]);
