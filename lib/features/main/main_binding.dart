import 'package:get/get.dart';

import 'main_logic.dart';
import 'main_logic_impl.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainLogic>(() => MainLogicImpl());
  }
}
