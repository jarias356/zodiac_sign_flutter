import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            child: Center(
                child: Padding(
          padding: const EdgeInsets.all(50),
          child: Card(
            borderOnForeground: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  txtPrincipalLogin,
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: _loginViewModel.userNameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: name),
                    onChanged: (value) {
                      _loginViewModel.setUserName(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ))),
      ),
    );
  }
}
