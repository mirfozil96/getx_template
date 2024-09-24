import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import '../../core/manager/app_pref_storage.dart';
import '../main/main_view.dart';
import 'sign_in_logic.dart';
import 'sign_in_state.dart';

class SignInLogicImpl extends GetxController implements SignInLogic {
  @override
  SignInState  state = SignInState();

  @override
  TextEditingController  emailController = TextEditingController();
  @override
  TextEditingController  passwordController = TextEditingController();
  final StorageManager storageManager = Get.find();


  @override
  Future<void> signInUser(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        showToast('Tizimga muvaffaqiyatli kirdingiz');
        await setEmailStorage(email);
        Get.offNamed(MainPage.route);
      }
    } on FirebaseAuthException catch (e) {
      showToast('Tizimga kirib bo\'lmadi: ${e.message}');
    } catch (e) {
      showToast('Tizimga kirib bo\'lmadi: ${e.toString()}');
    }
  }

  Future<void> setEmailStorage(String email)async{
    await storageManager.setEmail(email);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}