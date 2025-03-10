import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(onPressed:onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColor.primarycolor,
      textColor: Colors.white,
      child: Text(text),
      ),
    );
  }
}