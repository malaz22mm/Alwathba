
import 'package:flutter/material.dart';

import '../../../core/constant/imageasset.dart';
import '../../widgets/homepage/homeinfoplayer.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player'),
        actions: [
          Image.asset(AppImage.imagethree),
        ],
        elevation: 0.0,
      ),
      body: Container(
       // color: AppColor.background,
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            ListTile(
              title: Text(
                "Malaz Soliman",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Player",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            HomeInfoPlayer(
              text: "Date : Syria 18/7/2001",
            ),
            SizedBox(
              height: 10,
            ),
            HomeInfoPlayer(
              text: "Date : Syria 18/7/2001",
            ),
            SizedBox(
              height: 10,
            ),
            HomeInfoPlayer(
              text: "Date : Syria 18/7/2001",
            ),
            SizedBox(
              height: 10,
            ),
            HomeInfoPlayer(
              text: "Date : Syria 18/7/2001",
            ),
            SizedBox(
              height: 10,
            ),
            HomeInfoPlayer(
              text: "Date : Syria 18/7/2001",
            ),
            SizedBox(
              height: 10,
            ),
            HomeInfoPlayer(
              text: "Date : Syria 18/7/2001",
            ),
          ],
        ),
      ),
    );
  }
}
