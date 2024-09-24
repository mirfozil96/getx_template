import 'package:flutter/cupertino.dart';

import 'main_state.dart';

abstract class MainLogic {
 abstract final MainState state;
 abstract final PageController bottomNavController;
}
