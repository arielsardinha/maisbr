import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:maisbr/app/components/inputs/mbr_text_form_field.dart';
import 'package:maisbr/app/components/inputs/elevated_buttom/elevated_buttom.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/bottom_navigator_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/modules/assinatura/widgets/politica_privacidade_text_widget.dart';
import 'package:maisbr/app/modules/assinatura/widgets/titles_assignature.dart';
import 'package:maisbr/app/routers/app_routes.dart';

class AssinaturaPage extends StatelessWidget {
  const AssinaturaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MBRScaffoldDrawer(),
      appBar: MBRAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: AssinaturaTitles(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
              child: Card(
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Card(
                child: Stack(
                  children: [
                    Container(
                      height: 80,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Nome', style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  MBRTextFormField(
                    borderRadius: BorderRadius.circular(10),
                    hintText: 'Nome',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text('Ultimo nome', style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  MBRTextFormField(
                    borderRadius: BorderRadius.circular(10),
                    hintText: 'Ultimo nome',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('CPF', style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                        Text('*esse é seu login de acesso', style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  MBRTextFormField(
                    borderRadius: BorderRadius.circular(10),
                    hintText: 'CPF',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('E-mail', style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  MBRTextFormField(
                    borderRadius: BorderRadius.circular(10),
                    hintText: 'E-mail',
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: const AssinaturaPoliticaPrivacidadeTextWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: MBRElevatedButtom(
                      label: 'Quero assinar agora!',
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      icon: Icons.check,
                      onPressed: () {
                        Get.toNamed(Routes.INFO_PERFIL);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
