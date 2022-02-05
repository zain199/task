import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/ads_screen.dart';
import 'package:task/layout/catigories.dart';
import 'package:task/markets_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          elevation: 0.0,
          title: Row(
            children: [
              const Text(
                'السوق المفتوح',
                style: TextStyle(color: Colors.black),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Colors.grey[300], boxShadow: [
                    BoxShadow(
                      color: Colors.grey[700].withOpacity(.15),
                      offset: Offset(0, 5),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Container(
                          margin: EdgeInsets.all(5.0),
                          child: CircleAvatar(
                              foregroundImage: AssetImage('images/ar.png'))),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'ابحث في السوق المصر...مصر',
                      hintStyle: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'الاعلانات',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text('الاقسام',
                          style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child:
                          Text('متاجر', style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child:
                          Text('شوهد', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                Container(
                     height: double.maxFinite,
                     child: const TabBarView(
                       children: [
                         AdsScreen(),
                         CategoriesScreen(),
                         MarketsScreen(),
                         Center(child: Text('شوهد'),),
                       ],
                     ),

               ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('الرئسية')),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded), title: Text('دردشاتي')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.yellow[700],
                ),
                title: Text('اضف اعلان')),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined), title: Text('اعلاناتي')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), title: Text('حسابي')),
          ],
        ),
      ),
    );
  }
}
