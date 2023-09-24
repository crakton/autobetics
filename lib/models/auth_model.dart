import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  // late String errMsg;

  bool firstTime = true;
  bool loading = false;
  void updateLoading(bool loading) {
    loading = loading;
    notifyListeners();
  }

  void reset() {
    firstTime = false;
    loading = false;
    passwordController.text = "";
    confirmPasswordController.text = "";
    emailController.text = "";
    nameController.text = "";
    notifyListeners();
  }
}
