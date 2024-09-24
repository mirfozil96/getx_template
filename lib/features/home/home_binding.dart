import 'package:get/get.dart';
import 'home_logic_impl.dart';

import 'home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeLogic>(() => HomeLogicImpl());
  }
}
