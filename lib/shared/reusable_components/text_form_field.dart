import 'package:flutter/material.dart';

TextFormField textFormField({
  Widget suffix,
  Widget prefix,
  String hint,
  TextStyle hintStyle,
}) {
  return TextFormField(
    decoration: InputDecoration(
      suffixIcon: suffix,
      prefixIcon: prefix,
      hintText: hint,
      hintStyle: hintStyle,
    ),
  );
}
