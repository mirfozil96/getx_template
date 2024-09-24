import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const String _keyEmail = "keyEmail";

class StorageManager extends GetxService {
  final _box = GetStorage();

  String? get getUserEmail {
    return _box.read(_keyEmail);
  }

  Future<void> setEmail(String email) async {
    await _box.write(_keyEmail, email);
  }
}
