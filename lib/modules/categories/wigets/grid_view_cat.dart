import 'package:flutter/material.dart';

Widget gridCat(BuildContext context) {
  return GridView.count(
    mainAxisSpacing: 1.5,
    crossAxisSpacing: 1.5,
    childAspectRatio: 1.1 / 1.4,
    crossAxisCount: 2,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    children: List.generate(
      20,
      (index) => Container(
        width: 100,
        height: 100,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage('images/ar.png'), fit: BoxFit.cover),
        ),
        child: Align(
          alignment: AlignmentDirectional.topStart,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'سيارات و مركبات',
              style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.black),
            ),
          ),
        ),
      ),
    ),
  );
}
