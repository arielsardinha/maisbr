import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisbr/app/components/inputs/mbr_text_form_field.dart';
import 'package:maisbr/app/components/inputs/elevated_buttom/elevated_buttom.dart';
import 'package:maisbr/app/modules/login/widgets/esqueci_senha_widget.dart';
import 'package:maisbr/app/modules/login/widgets/logo_m_widget.dart';
import 'package:maisbr/app/modules/login/widgets/logo_sou_mais_widget.dart';
import 'package:maisbr/app/routers/app_routes.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const LoginLogoMWidget(),
            const LoginLogoSouMaisWidget(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MBRTextFormField(
                label: 'Nome',
                prefixIcon: const Icon(Icons.person, color: Colors.blue),
                validator: Validatorless.multiple([
                  Validatorless.required('Campo obrigatório'),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MBRTextFormField(
                label: 'Senha',
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: const Icon(Icons.lock_open_outlined, color: Colors.blue),
                validator: Validatorless.multiple([
                  Validatorless.required('Campo obrigatório'),
                  Validatorless.min(6, 'A senha deve ter pelo menos 6 caracteres'),
                  Validatorless.max(20, 'A senha deve ter no máximo 20 caracteres'),
                ]),
              ),
            ),
            const LoginEsqueciSenhaWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: MBRElevatedButtom(
                label: 'Entrar',
                backgroundColor: Colors.indigoAccent[700],
                padding: const EdgeInsets.all(12.0),
                onPressed: () {
                  Get.toNamed(Routes.CADASTRO);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: MBRElevatedButtom(
                label: 'Quero assinar agora',
                icon: Icons.check,
                padding: const EdgeInsets.all(12.0),
                onPressed: () {
                  Get.toNamed(Routes.ASSINATURA);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
