import 'package:flutter/material.dart';
class CoustomTitle extends StatelessWidget {
  const CoustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Team",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 25,
        ),
        Text(
          "Point",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Match",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "W",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "L",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "D",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Goal",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Goals",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Poo",
          style: TextStyle(color: Colors.white),
        ),

      ],
    );
  }
}
