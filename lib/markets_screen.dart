import 'package:flutter/material.dart';

class MarketsScreen extends StatelessWidget {
  const MarketsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          height: 50,
          child: Center(
              child: Text(
            '+ اضف متجرك الان',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hintText: 'ابحث عن متجر (12)',
              hintStyle: Theme.of(context).textTheme.caption,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 700,
          child: ListView(
            children: List.generate(10, (index) => Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      //color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      //alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            image: AssetImage('images/ar.png'),
                            fit: BoxFit.cover,
                            height: 150,
                            width: double.infinity,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Image(
                                image: AssetImage('images/ar.png'),
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              )),
                        ),
                      ],
                    ),
                    height: 170,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('on way',style: Theme.of(context).textTheme.headline6,),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (index) => Icon(Icons.star,color: Colors.amber,)),
                      ),
                      SizedBox(width: 10,),
                      Text('(3)'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.car_repair,color: Colors.red,),
                      SizedBox(width: 10,),
                      Text('سيارات و مركبات القاهرة . الاعلانات 32')
                    ],
                  )
                ],
              ),
            ),),
          ),
        )
      ],
    );
  }
}
