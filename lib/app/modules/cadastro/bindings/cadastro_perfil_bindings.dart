import 'package:get/get.dart';
import 'package:maisbr/app/modules/cadastro/controller/cadastro_controller.dart';

class CadastroPerfilBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CadastroController());
  }
}
