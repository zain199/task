import 'package:flutter/material.dart';
import 'package:task/shared/reusable_components/material_button.dart';

Widget addCart(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
    ),
    width: double.infinity,
    height: 50,
    child: materialButton(
      onPress: () {},
      child: Text(
        '+ اضف متجرك الان',
        style:
            Theme.of(context).textTheme.headline1.copyWith(color: Colors.white),
      ),
      highlightColor: Theme.of(context).primaryColor.withOpacity(.3),
    ),
  );
}
