import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginSignupviewmodel extends BaseViewModel {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailnamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  PageController mypageController = PageController();
  int currentpage = 0;
  bool isLogin = true;
  void toggleView() {
    isLogin = !isLogin;
    notifyListeners();
  }

  void login() {}
}
