import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/di/preference_module.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';

import '../../core/core.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginViewModel = Get.find<LoginViewModel>();
  // final preferenceModule = Get.find()<PreferenceModule>();

  @override
  Widget build(BuildContext context) {


    // preferenceModule.setString("New", "Theme by define");
    //
    // preferenceModule.getString("New");

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
                    controller: loginViewModel.userNameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: name
                    ),
                    onChanged: (value) {
                      loginViewModel.validInputUserName();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      FilledButton(
                          onPressed: () {
                            if (loginViewModel.validInputUserName()) {
                              print("User by sign");
                            }
                          },
                          child: const Text(txtGetStared)
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
