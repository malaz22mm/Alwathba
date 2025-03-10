import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../widgets/store/customitem.dart';

class Clothes extends StatelessWidget {
  const Clothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Clothes',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColor.primarycolor,
        ),
        body: Container(
          color: AppColor.background,
          child: GridView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return const CustomItem();
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 3,
              mainAxisSpacing: 2,
            ),
          ),
        ));
  }
}
