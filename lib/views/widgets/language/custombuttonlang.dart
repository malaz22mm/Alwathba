import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtoLang extends StatelessWidget {
  final String textbutoon;
  final void Function()? onPressed;
  const CustomButtoLang({super.key, required this.textbutoon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 100),
            width: double.infinity,
            child: MaterialButton(
            onPressed: onPressed,
            color: AppColor.primarycolor,
            textColor: Colors.white,
            child:  Text(textbutoon, style: const TextStyle(fontWeight: FontWeight.bold),),),
          );
  }
}