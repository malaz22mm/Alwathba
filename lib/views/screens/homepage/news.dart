
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import '../../widgets/homepage/drawerhome.dart';
import '../../widgets/homepage/homenews.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("News",style: TextStyle(color: Colors.white,),),
          elevation: 1,
          backgroundColor: AppColor.primarycolor,
          actions: [
            Image.asset(AppImage.imageone),
          ],
        ),
        drawer: const Drawer(
          backgroundColor: AppColor.background,
          child: DrawerHome(),
        ),
        body:const HomeNews()
        );
  }
}
