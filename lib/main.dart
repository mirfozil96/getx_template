import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/config/initial_binding.dart';
import 'core/config/routes.dart';
import 'core/manager/app_pref_storage.dart';
import 'features/splash/splash_view.dart';

//
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(StorageManager(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledToast(
      locale: const Locale('en', 'US'),
      alignment: Alignment.center,
      reverseAnimation: StyledToastAnimation.slideToBottomFade,
      toastAnimation: StyledToastAnimation.slideFromTopFade,
      toastPositions: const StyledToastPosition(align: Alignment.center),
      curve: Curves.fastOutSlowIn,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          fontFamily: 'InterTight',
          useMaterial3: false,
          colorScheme: const ColorScheme.dark(
            brightness: Brightness.light,
          ),
        ),
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            surfaceTintColor: Colors.transparent,
            scrolledUnderElevation: 0,
          ),
        ),
        themeMode: ThemeMode.light,
        enableLog: true,
        getPages: routes,
        // translationsKeys: AppTranslation.translationsKeys,
        // locale: const Locale('en'),
        // fallbackLocale: const Locale('uz'),
        initialBinding: InitialBinding(),
        // initialRoute: HomePage.route,
        initialRoute: SplashPage.route,
        builder: (context, child) => GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: child,
        ),
      ),
    );
  }
}
