import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'history_logic.dart';

class HistoryPage extends StatelessWidget {
  static const String route = "/history";
  HistoryPage({super.key});

  final logic = Get.find<HistoryLogic>();
  final state = Get.find<HistoryLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('History', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
