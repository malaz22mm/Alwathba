
import 'package:alwathba/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../screens/homepage/news.dart';
import '../../screens/homepage/profile.dart';
import '../../screens/settings/setting.dart';
import '../../screens/store/clothes.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentSelectIndex=0;

   updateScreen(int index){
    setState(() {
      currentSelectIndex=index;
    });
  } 
  final page=[
    const News(),
    const Settings(),
    const Profile(),
    const Clothes(),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: page[currentSelectIndex],
      bottomNavigationBar: BottomNavigationBar(items: const [
       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",backgroundColor: AppColor.primarycolor),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: AppColor.primarycolor),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: AppColor.primarycolor),
        BottomNavigationBarItem(icon: Icon(Icons.store),label: "Store",backgroundColor: AppColor.primarycolor)
      ],
      backgroundColor: AppColor.primarycolor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      currentIndex: currentSelectIndex,
      onTap: updateScreen,
      ),
    );
  }
}