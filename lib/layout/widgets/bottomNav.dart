import 'package:flutter/material.dart';

var navItems = [
  const BottomNavigationBarItem(
      icon: Icon(Icons.home), label: 'الرئسية'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.message_rounded), label: 'دردشاتي'),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.add_box,
        color: Colors.yellow[700],
      ),
      label: 'اضف اعلان'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.assignment_outlined), label: 'اعلاناتي'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.person_rounded), label: 'حسابي'),
];

Widget bottomNav(){
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: Colors.grey,
    unselectedLabelStyle: const TextStyle(color: Colors.grey),
    items: navItems,
  );
}