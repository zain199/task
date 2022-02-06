import 'package:flutter/material.dart';
import 'package:task/modules/categories/wigets/grid_view_cat.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10,),
          gridCat(context),
        ],
      ),
    );
  }
}
