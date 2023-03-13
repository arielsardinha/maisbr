import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:maisbr/app/components/inputs/elevated_buttom/elevated_buttom.dart';
import 'package:maisbr/app/components/inputs/mbr_text_form_field.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/bottom_navigator_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/modules/infoPerfil/view/widgets/info_perfil_widget.dart';
import 'package:maisbr/app/modules/infoPerfil/view/widgets/money_widget.dart';
import 'package:maisbr/app/routers/app_routes.dart';
import 'package:validatorless/validatorless.dart';

class InfoPerfilPage extends StatelessWidget {
  const InfoPerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MBRScaffoldDrawer(),
      appBar: MBRAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              const InfoPerfilWidget(),
              const Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: InfoPerfilMoneyWidget(),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu nome',
                hintText: 'Digite seu nome',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu ultimo nome',
                hintText: 'Digite seu ultimo nome',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('*esse é seu login de acesso', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  MBRTextFormField(
                    label: 'Digite seu e-mail',
                    hintText: 'Digite seu e-mail',
                    keyboardType: TextInputType.emailAddress,
                    validator: Validatorless.required('Campo obrigatório'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu CPF',
                hintText: 'Digite seu CEP',
                keyboardType: TextInputType.number,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu endereço',
                hintText: 'Digite seu endereço',
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu número',
                hintText: 'Digite seu número',
                keyboardType: TextInputType.number,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu complemento',
                hintText: 'Digite seu complemento',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu bairro',
                hintText: 'Digite seu bairro',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite sua cidade',
                hintText: 'Digite sua cidade',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu estado',
                hintText: 'Digite seu estado',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu país',
                hintText: 'Digite seu país',
                keyboardType: TextInputType.name,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite seu telefone',
                hintText: 'Digite seu telefone',
                keyboardType: TextInputType.phone,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRTextFormField(
                label: 'Digite sua data de nascimento',
                hintText: 'Digite sua data de nascimento',
                keyboardType: TextInputType.datetime,
                validator: Validatorless.required('Campo obrigatório'),
              ),
              const SizedBox(height: 16),
              MBRElevatedButtom(
                label: 'Completar cadastrar',
                icon: Icons.check,
                padding: const EdgeInsets.symmetric(vertical: 8),
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
