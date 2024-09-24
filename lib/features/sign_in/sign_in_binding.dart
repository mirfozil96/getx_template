import 'package:get/get.dart';

import 'sign_in_logic.dart';
import 'sing_in_logic_impl.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInLogic>(() => SignInLogicImpl());
  }
}
