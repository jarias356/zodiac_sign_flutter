import 'package:flutter/material.dart';

class WidgetShared {
  static OutlineTextFieldGeneral() {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        labelText: "name",
        border: OutlineInputBorder(),
      ),

    );
  }
}