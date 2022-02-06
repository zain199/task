import 'package:flutter/material.dart';

Widget gridView(BuildContext context){
  return GridView.count(
    mainAxisSpacing: 1.5,
    crossAxisSpacing: 1.5,
    childAspectRatio: 1.1 / 1.4,
    crossAxisCount: 3,
    shrinkWrap: true,
    physics:const NeverScrollableScrollPhysics(),
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
          alignment: AlignmentDirectional.bottomCenter,
          child:  Container(
            margin:const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              //color: Theme.of(context).colorScheme.onSecondary.withOpacity(.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Text(
              '10,000,000 جنيه',
              style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}