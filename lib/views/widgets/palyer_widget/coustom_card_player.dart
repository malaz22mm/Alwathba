import 'package:alwathba/core/constant/color.dart';
import 'package:flutter/material.dart';

class CoustomPlayerCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageurl;

  const CoustomPlayerCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(imageurl),
                Positioned(
                  top: 150,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                  width: 150,
                  height: 150,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(150),color: AppColor.background),
                      child: Column(children: [
                        
                        Text(title,style: const TextStyle(fontSize: 12),),
                        Text(subtitle)
                      ],),
                ))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
