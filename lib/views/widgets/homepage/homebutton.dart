import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class HomeButton extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const HomeButton({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 250,
              decoration: BoxDecoration(
                  color: AppColor.primarycolor,
                  borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: onPressed,
                child: Text(textbutton),
              ),
            );
  }
}