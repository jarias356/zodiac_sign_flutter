import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginViewModel = Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(children: [
          Obx(() => Text('Counter: ${loginViewModel.counter.value}')),
          ElevatedButton(
              onPressed: loginViewModel.updateCounter,
              child: const Text('Increment'))
        ])),
      ),
    );
  }
}
