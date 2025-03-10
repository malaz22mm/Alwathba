import 'package:flutter/material.dart';

class CustomBady extends StatelessWidget {
  final String text;
  const CustomBady({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
  }
}