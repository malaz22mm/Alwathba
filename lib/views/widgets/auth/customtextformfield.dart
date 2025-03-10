import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final void Function()? onTapIcon;
  const CustomTextFormField(
      {super.key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
       required this.valid});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: mycontroller,
        validator: valid,
        obscureText: obscureText==null || obscureText==false? false:true,
        decoration: InputDecoration(
            hintStyle:Theme.of(context).textTheme.bodyMedium ,
            hintText: hinttext,
            label: Text(labeltext),
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            suffixIcon: InkWell(onTap:onTapIcon,child: Icon(iconData)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
