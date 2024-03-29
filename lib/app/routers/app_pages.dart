// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:maisbr/app/modules/assinatura/bindings/assinatura_bindings.dart';
import 'package:maisbr/app/modules/assinatura/view/assinatura_page.dart';
import 'package:maisbr/app/modules/cadastro/bindings/cadastro_perfil_bindings.dart';
import 'package:maisbr/app/modules/cadastro/view/cadastro_page.dart';
import 'package:maisbr/app/modules/details/bindings/details_bindings.dart';
import 'package:maisbr/app/modules/infoPerfil/view/info_perfil_page.dart';
import 'package:maisbr/app/modules/login/bindings/login_bindings.dart';
import 'package:maisbr/app/modules/login/view/login_page.dart';
import 'package:maisbr/app/modules/home/view/home_page.dart';
import 'package:maisbr/app/modules/splash/view/splash_view.dart';
import 'package:maisbr/app/routers/app_routes.dart';
import '../modules/details/view/details_page.dart';

abstract class RoutesRaiz {
  RoutesRaiz._();

  static const SPHASH = '/';
  static const HOME = '/home';
  static const DETAILS = '/details';
  static const LOGIN = '/login';
  static const CADASTRO = '/cadastro';
  static const ASSINATURA = '/assinatura';
  static const INFO_PERFIL = '/info_perfil';
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
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: Routes.CADASTRO,
      page: () => const CadastroPage(),
      binding: CadastroPerfilBindings(),
    ),
    GetPage(
      name: Routes.ASSINATURA,
      page: () => const AssinaturaPage(),
      binding: AssinaturaBindings(),
    ),
    GetPage(
      name: Routes.INFO_PERFIL,
      page: () => const InfoPerfilPage(),
    )
  ];
}
