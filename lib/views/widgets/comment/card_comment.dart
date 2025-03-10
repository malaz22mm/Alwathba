import 'package:alwathba/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String comment;

  const CommentCard({super.key, required this.firstName, required this.lastName, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImage.imagetwo,
            width: 35,
            height: 35,
          ),
          const SizedBox(width:20.0), // Add some spacing between the image and the text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
              children: [
                Row(
                  children: [
                    Text(
                      '$firstName $lastName',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  comment,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.thumb_up,color: Colors.white,)
        ],
      ),
    );
  }
}
