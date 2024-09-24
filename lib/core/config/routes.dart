import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../features/history/history_binding.dart';
import '../../features/history/history_view.dart';
import '../../features/home/home_binding.dart';
import '../../features/home/home_view.dart';
import '../../features/main/main_binding.dart';
import '../../features/main/main_view.dart';
import '../../features/profile/profile_binding.dart';
import '../../features/profile/profile_view.dart';
import '../../features/sign_in/sign_in_binding.dart';
import '../../features/sign_in/sign_in_view.dart';
import '../../features/splash/splash_binding.dart';
import '../../features/splash/splash_view.dart';

final List<GetPage> routes = [
  GetPage(
    name: SplashPage.route,
    page: () => SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: SignInPage.route,
    page: () => SignInPage(),
    binding: SignInBinding(),
  ),
  GetPage(
    name: MainPage.route,
    transition: Transition.topLevel,
    page: () => MainPage(),
    bindings: [
      MainBinding(),
      HomeBinding(),
      HistoryBinding(),
      ProfileBinding(),
    ],
  ),
  GetPage(
    name: MainPage.route,
    page: () => MainPage(),
    binding: MainBinding(),
  ),
  GetPage(
    name: HomePage.route,
    page: () => HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: ProfilePage.route,
    page: () => ProfilePage(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: HistoryPage.route,
    page: () => HistoryPage(),
    binding: HistoryBinding(),
  ),
];
