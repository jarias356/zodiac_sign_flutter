import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/route/route_const.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';

import '../../core/core.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _loginViewModel = Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  txtPrincipalLogin,
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _loginViewModel.userNameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: name),
                  onChanged: (value) {
                    _loginViewModel.setUserName(value);
                  },
                ),
                const SizedBox(height: 32),
                Obx(() => FilledButton(
                    onPressed: _loginViewModel.enabledButtonLogin.value ? () {
                      _loginViewModel.saveUserName();
                      Get.toNamed(RouteConst.welcomePage);
                    } : null,
                    child: const Text(txtGetStared))),
              ],
            ),
          ),
        ),
      ))
      ),
    );
  }
}
