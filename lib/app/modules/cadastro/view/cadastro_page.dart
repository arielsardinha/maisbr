import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:maisbr/app/components/inputs/entrar_buttom/mbr_label_buttom.dart';
import 'package:maisbr/app/components/inputs/mbr_text_form_field.dart';
import 'package:maisbr/app/components/layout/app_bar/app_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/bottom_navigator_bar.dart';
import 'package:maisbr/app/components/layout/scaffold/scaffold_drawer.dart';
import 'package:maisbr/app/modules/cadastro/controller/cadastro_controller.dart';
import 'package:maisbr/app/modules/cadastro/widgets/perfil_widget.dart';

class CadastroPage extends GetView<CadastroController> {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MBRScaffoldDrawer(),
      appBar: MBRAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
          child: Column(
            children: [
              const CadastroPerfilWidget(),
              MBRTextFormField(
                label: 'CPF',
                hintText: 'Digite seu CPF',
                prefixIcon: const Icon(Icons.person, color: Colors.blue),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(11),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              MBRTextFormField(
                label: 'Nome',
                hintText: 'Digite seu nome',
                prefixIcon: const Icon(Icons.person, color: Colors.blue),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              MBRTextFormField(
                label: 'E-mail',
                hintText: 'Digite seu e-mail',
                prefixIcon: const Icon(Icons.email, color: Colors.blue),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              MBRTextFormField(
                label: 'Senha',
                hintText: 'Digite sua senha',
                prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              MBRTextFormField(
                label: 'Confirme sua senha',
                hintText: 'Digite sua senha novamente',
                prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Text('Lembre-me', style: TextStyle(color: Colors.grey[600])),
                  Obx(
                    () => Switch(
                      value: controller.togleswitchCadastro.value,
                      onChanged: (value) {
                        controller.togleswitchCadastro.value = value;
                      },
                      activeColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              const MbrLabelButtom(
                label: 'Cadastrar',
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}
