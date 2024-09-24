import 'package:get/get.dart';

import 'profile_logic.dart';
import 'profile_logic_impl.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileLogic>(() => ProfileLogicImpl());
  }
}
