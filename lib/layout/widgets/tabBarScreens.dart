import 'package:flutter/material.dart';
import 'package:task/modules/ads/view/ads_screen.dart';
import 'package:task/modules/categories/view/catigories.dart';
import 'package:task/modules/markets/view/markets_screen.dart';

Widget tabBarScreens(){
  return const SizedBox(
    height: 480,
    child: TabBarView(
      children: [
        AdsScreen(),
        CategoriesScreen(),
        MarketsScreen(),
        Center(
          child: Text('شوهد'),
        ),
      ],
    ),
  );
}