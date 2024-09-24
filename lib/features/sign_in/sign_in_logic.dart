import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'sign_in_state.dart';

abstract class SignInLogic {

  abstract final SignInState state;

  abstract final TextEditingController emailController;

  abstract final TextEditingController passwordController;

  Future<void> signInUser(String email, String password);

}
