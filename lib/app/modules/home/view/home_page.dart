import 'package:flutter/material.dart';
import 'package:maisbr/app/modules/home/widgets/ads_widget.dart/ads_widget.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/components/inputs/search/mbr_search.dart';
import '../widgets/grid_view_categorias.dart/grid_view_categorias.dart';
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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const HomeAdsWidget();
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 12, bottom: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Categorias', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
              ),
            ),
            const HomeGridViewCategoriasWidget()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
