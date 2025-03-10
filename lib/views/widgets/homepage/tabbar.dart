
//import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import 'drawerhome.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Store"),
        elevation: 0.0,
        actions: [
          Image.asset(AppImage.imagethree),
        ],
      ),
      drawer: const DrawerHome(),
      body: Container(
        color: AppColor.background,
        child: const SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                // ButtonsTabBar(
                //   backgroundColor: Colors.red,
                //   unselectedBackgroundColor: Colors.grey[300],
                //   unselectedLabelStyle: const TextStyle(color: Colors.black),
                //   labelStyle: const TextStyle(
                //       color: Colors.white, fontWeight: FontWeight.bold),
                //   tabs: const [
                //     Tab(text: "Clothes",),
                //     Tab(text: "FootBall"),
                //     Tab(text: "Basketball"),
                //    // Tab(text: "Tickets"),
                //   ],
                // ),
                // const Expanded(
                //   child: TabBarView(
                //     children: <Widget>[
                //       Center(child: Clothes(),),
                //       Center(child: NewItems()),
                //       Center(child: BasketBall()),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
