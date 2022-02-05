import 'package:flutter/material.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'عقارات للبيع',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: Text(
                    'شاهد المزيد',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          GridView.count(
            mainAxisSpacing: 1.5,
            crossAxisSpacing: 1.5,
            childAspectRatio: 1.1 / 1.4,
            crossAxisCount: 3,
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
                    alignment: AlignmentDirectional.bottomEnd,
                    child:  Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        '10,000,000 جنيه',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
