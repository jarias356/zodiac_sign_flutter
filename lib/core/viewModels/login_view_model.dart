import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/commons/database/database.dart';

import '../repositories/login_repository.dart';

class LoginViewModel extends GetxController {
  var counter = 0.obs;

  final _loginRepository = Get.find<LoginRepository>();

  final TextEditingController userNameController = TextEditingController();
  String _userNameValue = "";

  void setUserName(String value) {
    _userNameValue = value;
  }

  bool validInputUserName() {
    if (_userNameValue.isNotEmpty) {
      return true;
    } return false;

  }


}