// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:maisbr/app/modules/login/view/login_page.dart';
import 'package:maisbr/app/modules/details/bindings/bindings.dart';
import 'package:maisbr/app/modules/home/view/home_page.dart';
import 'package:maisbr/app/modules/splash/view/splash_view.dart';
import 'package:maisbr/app/routers/app_routes.dart';

import '../modules/details/view/details_page.dart';

abstract class RoutesRaiz {
  RoutesRaiz._();

  static const SPHASH = '/';
  static const HOME = '/home';
  static const DETAILS = '/details';
  static const CADASTRO = '/cadastro';
}

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPHASH,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const DetailsPage(),
      binding: DetailsBindes(),
    ),
    GetPage(
      name: Routes.CADASTRO,
      page: () => const LoginPage(),
    ),
  ];
}
