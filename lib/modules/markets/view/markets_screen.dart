import 'package:flutter/material.dart';
import 'package:task/modules/markets/wigets/addCart.dart';
import 'package:task/modules/markets/wigets/available_cart.dart';
import 'package:task/modules/markets/wigets/search_cart.dart';

class MarketsScreen extends StatelessWidget {
  const MarketsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        addCart(context),

        const SizedBox(
          height: 10,
        ),

        searchCart(context),

        availableCart(context),
      ],
    );
  }
}
