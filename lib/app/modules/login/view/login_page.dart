import 'package:flutter/material.dart';
import 'package:maisbr/app/components/inputs/mbr_text_form_field.dart';
import 'package:maisbr/app/components/inputs/validator_buttom/validator_buttom.dart';
import 'package:maisbr/app/modules/login/widgets/esqueci_senha_widget.dart';
import 'package:maisbr/app/modules/login/widgets/logo_m_widget.dart';
import 'package:maisbr/app/modules/login/widgets/logo_sou_mais_widget.dart';
import 'package:validatorless/validatorless.dart';
import '../../../components/inputs/entrar_buttom/mbr_entrar_buttom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          const MbrEntrarButtom(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: const MBRValidatorButtom(label: 'Quero assinar agora'),
          )
        ],
      ),
    );
  }
}
