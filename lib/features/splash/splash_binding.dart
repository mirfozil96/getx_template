import 'package:get/get.dart';

import 'splash_logic.dart';
import 'splash_logic_impl.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashLogic>(() => SplashLogicImpl());
  }
}
