import 'package:flutter/material.dart';



Widget tabBarItems(BuildContext context) {

  List<Widget> tabList = [
    Tab(
      child: Text(
        'الاعلانات',
        style: Theme
            .of(context)
            .textTheme
            .subtitle1,
      ),
    ),
    Tab(
      child: Text(
        'الأقسام',
        style: Theme
            .of(context)
            .textTheme
            .subtitle1,
      ),
    ),
    Tab(
      child: Text(
        'متاجر',
        style: Theme
            .of(context)
            .textTheme
            .subtitle1,
      ),
    ),
    Tab(
      child: Text(
        'شوهد',
        style: Theme
            .of(context)
            .textTheme
            .subtitle1,
      ),
    ),
  ];

  return TabBar(
      tabs: tabList ,
  );
}
