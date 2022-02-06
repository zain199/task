import 'package:flutter/material.dart';
import 'package:task/shared/reusable_components/icon_button.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    title: Row(
      children: [
        Text(
          'السوق المفتوح',
          style: Theme.of(context).textTheme.headline3,
        ),

        const Spacer(),

        iconButton(
          onPress: () {},
          icon: const Icon(
            Icons.notifications,
          ),
        ),
        iconButton(
          onPress: () {},
          icon: const Icon(
            Icons.more_vert,
          ),
        ),
      ],
    ),
  );
}
