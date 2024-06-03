import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repositories/login_repository.dart';

class LoginViewModel extends GetxController {
  final RxBool enabledButtonLogin = false.obs;

  final _loginRepository = Get.find<LoginRepository>();

  final TextEditingController userNameController = TextEditingController();
  final RxString _userNameValue = "".obs;


  void setUserName(String value) {
    _userNameValue.value = value;
    _validInputUserName();
  }
  void _validInputUserName() {
    enabledButtonLogin.value = _userNameValue.value.isNotEmpty;
  }
  void saveUserName() {
    _loginRepository.saveUserName(_userNameValue.value);
  }

}