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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Nome', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu nome',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Ultimo nome', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu ultimo nome',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('E-mail', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                      Text('*esse é seu login de acesso', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  MBRTextFormField(
                    hintText: 'Digite seu e-mail',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('CEP', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu CEP',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Rua, avenida, travessa...', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu endereço',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Número', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu número',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Complemento', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu complemento',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Bairro', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu bairro',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Cidade', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite sua cidade',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Estado', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu estado',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('País', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu país',
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Telefone', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite seu telefone',
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Data de nascimento', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500)),
                  MBRTextFormField(
                    hintText: 'Digite sua data de nascimento',
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                      return null;
                    },
                  ),
                ],
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
