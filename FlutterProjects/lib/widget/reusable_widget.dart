import 'package:flutter/material.dart';
TextField field(String text,IconData icon,bool isPassword,TextEditingController controller)
{
  return TextField(controller: controller,
  obscureText: isPassword,
  enableSuggestions: isPassword,
  autocorrect: isPassword,
  cursorColor: Colors.black26,
    keyboardType: isPassword ?
    TextInputType.visiblePassword:
    TextInputType.emailAddress,
  );
}