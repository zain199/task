import 'package:flutter/material.dart';
import 'package:task/shared/reusable_components/text_form_field.dart';

Widget search(BuildContext context){
  return Container(
    decoration:
    BoxDecoration(color: Theme.of(context).colorScheme.secondary, boxShadow: [
      BoxShadow(
        color:Theme.of(context).colorScheme.secondaryVariant.withOpacity(.15),
        offset: const Offset(0, 5),
        spreadRadius: 5,
        blurRadius: 5,
      ),
    ]),
    child: textFormField(
      suffix: Container(
          margin: const EdgeInsets.all(5.0),
          child: const CircleAvatar(
              foregroundImage: AssetImage('images/ar.png'))) ,
      prefix: Icon(
        Icons.search,
        color: Theme.of(context).colorScheme.secondaryVariant,
      ),
      hint: 'ابحث في السوق المصر...مصر' ,
      hintStyle: Theme.of(context).textTheme.caption,
    ),
  );
}