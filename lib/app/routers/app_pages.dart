import 'package:get/get.dart';
import 'package:maisbr/app/modules/splash/view/splash_view.dart';
import 'package:maisbr/app/routers/app_routes.dart';

abstract class RoutesRaiz {
  RoutesRaiz._();

  static const SPHASH = '/';
}

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPHASH,
      page: () => const SplashView(),
    ),
  ];
}
