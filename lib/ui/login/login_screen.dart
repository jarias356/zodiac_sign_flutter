import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';

import '../../core/core.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginViewModel = Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
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
