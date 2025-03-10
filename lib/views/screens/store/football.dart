
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';

class NewItems extends StatelessWidget {
  const NewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FootBall',style: TextStyle(color: Colors.white),),
        backgroundColor: AppColor.background,
      ),
      body: Container(
       // color: AppColor.background,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListView(
          children: [
            Wrap(
              direction: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColor.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          AppImage.imageone,
                          width: 150,
                          height: 250,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Men-T-Shirt(black)"),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text("25.5")
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColor.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          AppImage.imageone,
                          width: 150,
                          height: 250,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Men-T-Shirt(black)"),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text("25.5")
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColor.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          AppImage.imageone,
                          width: 150,
                          height: 250,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Men-T-Shirt(black)"),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text("25.5")
                  ],
                ),
                const SizedBox(width: 10, height: 10),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColor.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          AppImage.imageone,
                          width: 150,
                          height: 250,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Men-T-Shirt(black)"),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text("25.5")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
