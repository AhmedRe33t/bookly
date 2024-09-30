import 'package:go_router/go_router.dart';

customNavigation(context, {required String path, extra}) {
  GoRouter.of(context).push(path,extra:extra );
}


customNavigateAndReplaceMent(context, {required String path}) {
  GoRouter.of(context).pushReplacement(path);
}
