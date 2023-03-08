import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisbr/app/routers/app_pages.dart';
import 'package:maisbr/app/routers/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'mais br',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.DETAILS,
    );
  }
}
