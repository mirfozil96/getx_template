import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_logic.dart';

class ProfilePage extends StatelessWidget {
  static const String route = "/profile";
  ProfilePage({super.key});

  final logic = Get.find<ProfileLogic>();
  final state = Get.find<ProfileLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
