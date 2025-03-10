import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUp extends StatelessWidget {
  final String texttone;
  final String texttwo;
  final void Function()? onTap;
  const CustomTextSignUp(
      {super.key,
      required this.texttone,
      required this.texttwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(texttone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: const TextStyle(
                color: AppColor.primarycolor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
