import 'package:flutter/material.dart';

Widget availableCart(BuildContext context){
  return  SizedBox(
    height: 350,
    child: ListView(
      children: List.generate(10, (index) => Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
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
                      //color: Colors.white,
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
                        margin:const EdgeInsets.symmetric(horizontal: 15),
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
              margin:const EdgeInsets.symmetric(horizontal: 10),
              child: Text('on way',style: Theme.of(context).textTheme.headline6,),
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Row(
                  children: List.generate(5, (index) => const Icon(Icons.star,color: Colors.amber,)),
                ),
                const SizedBox(width: 10,),
                const Text('(3)'),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Icon(Icons.car_repair,color: Colors.red,),
                SizedBox(width: 10,),
                Text('سيارات و مركبات القاهرة . الاعلانات 32')
              ],
            )
          ],
        ),
      ),),
    ),
  );
}