
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';

import '../../core/core.dart';
import '../../di/preference_module.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginViewModel = Get.find<LoginViewModel>();
  final preferenceModule = Get.find<PreferenceModule>();

  @override
  Widget build(BuildContext context) {
    preferenceModule.setString("new", "Theme by define");

    print(preferenceModule.getString("new"));

    return const SafeArea(
      child: Scaffold(
        body: Center(
            child: Center(
                child: Padding(
                  padding: EdgeInsets.all(50),
                    child: Card(
                      color: Colors.indigo,
                        child: Column(
                        mainAxisSize: MainAxisSize.min,
                          children:[
                        Text(
                            txtPrincipalLogin,
                            style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                                labelText: name
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            )
        ),
      ),
    );
  }
}
