import 'package:flutter/material.dart';
class AddCommentCard extends StatelessWidget {
  const AddCommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Write a comment...",
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,  // Removes the border
      ),
      maxLines: null,  // Allows the text field to expand vertically
    );
  }
}
