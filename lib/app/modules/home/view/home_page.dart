import 'package:flutter/material.dart';
import 'package:maisbr/app/components/layout/ads_widget.dart/ads_widget.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/components/layout/search/mbr_search.dart';
import '../../../components/layout/grid_view_categorias.dart/grid_view_categorias.dart';
import '../../../components/layout/scaffold/bottom_navigator_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MBRScaffoldDrawer(),
      appBar: MBRAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MbrSearch(),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const MBRADSWidget();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 12, bottom: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Categorias', style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
            const MBRGridViewCategorias()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
