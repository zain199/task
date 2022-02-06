import 'package:flutter/material.dart';

IconButton iconButton({
  @required onPress,
  @required icon,
  iconSize ,
  color ,
}) {
  return IconButton(
    onPressed: onPress,
    icon: icon,
    iconSize: iconSize ?? 24,
    color: color ,
  );
}
