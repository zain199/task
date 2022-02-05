import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        GridView.count(
          mainAxisSpacing: 1.5,
          crossAxisSpacing: 1.5,
          childAspectRatio: 1.1 / 1.4,
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            20,
                (index) => Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    image: AssetImage('images/ar.png'), fit: BoxFit.cover),
              ),
              child:   Align(
                alignment: AlignmentDirectional.topStart,
                child:  Container(
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'سيارات و مركبات',
                    style: TextStyle(color: Colors.black),
                  ),
                ),

              ),
            ),
          ),
        ),
      ],
    );
  }
}
