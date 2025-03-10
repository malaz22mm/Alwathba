
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    const SizedBox(height: 20,),
                   InkWell(
                    onTap: () {},
                    child:  Container(
                        decoration: BoxDecoration(
                            color: AppColor.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          AppImage.imageone,
                          width: 150,
                          height: 230,
                          fit: BoxFit.fitHeight,
                        ),),
                   ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Men-T-Shirt(black)",style: TextStyle(color: Colors.white),),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text("25.5",style: TextStyle(color: Colors.white),)
                  ],
                );
  }
}