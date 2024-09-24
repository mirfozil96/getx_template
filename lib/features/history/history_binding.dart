import 'package:get/get.dart';
import 'history_logic.dart';
import 'history_logic_impl.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryLogic>(() => HistoryLogicImpl());
  }
}
