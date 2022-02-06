import 'package:flutter/material.dart';

Widget viewMore(BuildContext context){
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'عقارات للبيع',
          style: Theme.of(context)
              .textTheme
              .headline5,
        ),
      ),
      const Spacer(),
      Container(
          padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blue),
          child: Text(
            'شاهد المزيد',
            style: Theme.of(context)
                .textTheme
                .subtitle2.copyWith(color: Colors.white),
          ))
    ],
  );
}