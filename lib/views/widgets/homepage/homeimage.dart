import 'package:flutter/material.dart';


class HomeImage extends StatelessWidget {
  final double height;
  final String imageurl;
  const HomeImage({super.key, required this.height, required this.imageurl,});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                      imageurl
                  )
                ),
              ),
            );
  }
}