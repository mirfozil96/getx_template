import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';
import '../../ui/widget/app_button.dart';
import '../../ui/widget/app_text_field.dart';
import 'sign_in_logic.dart';

class SignInPage extends StatelessWidget {
   static const String route = '/signIn';
  SignInPage({super.key});

  final logic = Get.find<SignInLogic>();
  final state = Get.find<SignInLogic>().state;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            Column(
              children: [
                AppTextField(
                  controller: logic.emailController,
                  icon: Assets.iconsIcLogin,
                    hintText: 'Email',
                ),
                const Gap(20),
                AppTextField(
                  controller: logic.passwordController,
                  icon: Assets.iconsIcLuck,
                    hintText: 'Password',
                ),
              ],
            ),
            AppPrimaryButton(
              text: 'Kirish',
              onTap: (){
                 logic.signInUser(logic.emailController.text.tr, logic.passwordController.text.trim());
                 //logic.toast();
              },
            )
          ],
        ),
      ),
    );
  }
}
