import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                text,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              );
  }
}