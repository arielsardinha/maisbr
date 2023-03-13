import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/bottom_navigator_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/modules/details/widgets/card_store_location/card_store_location.dart';
import 'package:maisbr/app/modules/details/widgets/data_grid/data_grid_widget.dart';
import 'package:maisbr/app/routers/app_routes.dart';
import '../../../components/inputs/elevated_buttom/elevated_buttom.dart';
import '../widgets/card_social_midia/card_social_midia.dart';
import '../widgets/details_descrition/details_descrition_widget.dart';
import '../widgets/google_maps/google_maps.dart';
import '../widgets/store_photo/store_photo.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MBRScaffoldDrawer(),
      appBar: MBRAppBar(),
      body: ListView(
        children: [
          const DetaisStorePhotoWidget(),
          const DetailsCardStoreLocationWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: MBRElevatedButtom(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              label: 'Validar meu desconto',
              onPressed: () {
                Get.toNamed(Routes.INFO_PERFIL);
              },
            ),
          ),
          const DetailsDescritionWidget(title: 'Carrefour Market'),
          const DetaisDataGridWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: MBRElevatedButtom(
              label: 'Ver Cardápio',
              backgroundColor: Colors.amber[900],
              padding: const EdgeInsets.symmetric(vertical: 8),
              onPressed: () {},
            ),
          ),
          const DetailsDescritionWidget(title: 'Regras de uso'),
          const DetailsCardSocialMidia(),
          const DetailsGoogleMapsWidget(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
