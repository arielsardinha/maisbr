// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/modules/details/widgets/card_store_location/card_store_location.dart';
import 'package:maisbr/app/modules/details/widgets/data_grid/data_grid_widget.dart';
import '../../../components/inputs/cardapio_buttom/mbr_cardapio_buttom.dart';
import '../../../components/inputs/validator_buttom/elevated_buttom.dart';
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
          MBRElevatedButtom(label: 'Validar meu desconto', onPressed: () {}),
          const DetailsDescritionWidget(title: 'Carrefour Market'),
          const DetaisDataGridWidget(),
          const MbrCardapioButtom(),
          const DetailsDescritionWidget(title: 'Regras de uso'),
          const DetailsCardSocialMidia(),
          const DetailsGoogleMapsWidget(),
        ],
      ),
    );
  }
}
