import 'package:flutter/material.dart';
import 'package:task/layout/widgets/appBar.dart';
import 'package:task/layout/widgets/bottomNav.dart';
import 'package:task/layout/widgets/search.dart';
import 'package:task/layout/widgets/tabBarItems.dart';
import 'package:task/layout/widgets/tabBarScreens.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                search(context),
                const SizedBox(
                  height: 10,
                ),
                tabBarItems(context),
                tabBarScreens(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomNav(),
      ),
    );
  }
}
