import 'package:flutter/material.dart';

import '../homepage/homeimage.dart';
class CoustomCardMatched extends StatelessWidget {
  final String title;
  final String subtit;
  final String imageurl1;
  final String imageUrl2;
  final String date;
  const CoustomCardMatched({super.key, required this.title, required this.subtit, required this.imageurl1, required this.imageUrl2, required this.date, });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 4, child: HomeImage(height: 50, imageurl: imageurl1,)),
            Expanded(flex: 5, child: HomeImage(height: 50, imageurl: imageUrl2,)),
            Expanded(
                flex: 20,
                child: ListTile(
                  title: Text(
                    title,
                    style:const TextStyle(fontSize: 16, color: Colors.white,
                  ),),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Text(subtit,style: const TextStyle(color: Colors.white),),Text(date,style: const TextStyle(color: Colors.white),),],),
                )),
          ],
        ),

      ],
    );
  }
}
