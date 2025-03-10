import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class HomeInfoPlayer extends StatelessWidget {
  final String text; 
  const HomeInfoPlayer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: const EdgeInsets.all(15),
               decoration: BoxDecoration(
                color:AppColor.grey,
                borderRadius: BorderRadius.circular(10),
               ),
               child:  Text(text,style: const TextStyle(color: Colors.white),),
            );
  }
}