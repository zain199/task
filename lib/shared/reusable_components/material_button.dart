import 'package:flutter/material.dart';

Widget materialButton({
  @required Function onPress,
  Widget child ,
  Color highlightColor,

}){
  return MaterialButton(
      onPressed: onPress,
      highlightColor: highlightColor,
      child: child
  );
}