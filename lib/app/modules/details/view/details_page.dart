import 'package:flutter/material.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/modules/details/widgets/card_store_location/card_store_location.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';

import '../widgets/store_photo/store_photo.dart';
import '../../../components/layout/validator_buttom/validator_buttom.dart';

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
          const MBRValidatorButtom(),
          Container(),
        ],
      ),
    );
  }
}
