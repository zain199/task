import 'package:flutter/material.dart';
import 'package:task/modules/ads/wigets/gridView.dart';
import 'package:task/modules/ads/wigets/view_more.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          viewMore(context),
          gridView(context),
        ],
      ),
    );
  }
}
