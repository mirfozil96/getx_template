

import '/localization/ru.dart';
import '/localization/uz.dart';
import '/localization/uz_cr.dart';


abstract class AppTranslations {
  static Map<String, Map<String, String>> translationsKey = {
    "uz" : uz,
    "ru" : ru,
    "uz_cr": uzCr,
  };
}