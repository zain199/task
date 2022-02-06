import 'package:flutter/material.dart';
import 'package:task/shared/reusable_components/text_form_field.dart';

Widget searchCart(BuildContext context){
  return Container(
    decoration:  BoxDecoration(
      color: Theme.of(context).backgroundColor,
    ),
    child: textFormField(
      hintStyle:Theme.of(context).textTheme.caption ,
      hint: 'ابحث عن متجر (12)' ,
      prefix: Icon(
        Icons.search,
        color: Theme.of(context).colorScheme.secondaryVariant,
      ),
    ),
  );
}