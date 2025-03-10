
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import '../../widgets/homepage/drawerhome.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primarycolor,
        title: const Text("My Profile",style: TextStyle(color: Colors.white),),
        elevation: 0.0,
        actions: [
          Image.asset(AppImage.imagethree),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: AppColor.background,
        child: DrawerHome(),
      ),
      body: Container(
        color: AppColor.background,
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Row(
                children: [
                 SizedBox(
                  height: 80,width: 80,
                   child: CircleAvatar(
                    backgroundImage: AssetImage(AppImage.imageone),
                   ),
                 ),
                 SizedBox(
                  width: 250,height: 80,
                   child:ListTile(
                    title: Text("Malaz Souliman",style: TextStyle(fontSize: 20,color: Colors.white),),
                    subtitle: Text("malazmalz71@gmail.com",style: TextStyle(fontSize: 15,color: Colors.grey),),
                   ),
                 )
                ],
              ),
              const SizedBox(height: 20,),
              Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Row(children: [
                  Text("Username:",style: TextStyle(fontSize: 18,color: Colors.white),),
                  SizedBox(width:10 ,),
                  Text("Malaz Souliman",style: TextStyle(fontSize: 18,color: Colors.white),)

                ],),
                
                Icon(Icons.edit,color: Colors.white,)
                 ],),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(5)
              ),
              child:const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Row(children: [
                  Text("User Email:",style: TextStyle(fontSize: 18,color: Colors.white),),
                  SizedBox(width:10 ,),
                  Text("malazmalaz@gmail.com",style: TextStyle(fontSize: 18,color: Colors.white),)

                ],),

                Icon(Icons.edit,color: Colors.white,)
              ],),
            ),const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(5)
                ),
                child:const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Row(children: [
                    Text("Password:",style: TextStyle(fontSize: 18,color: Colors.white),),
                    SizedBox(width:10 ,),
                    Text("**********",style: TextStyle(fontSize: 18,color: Colors.white),)

                  ],),

                  Icon(Icons.edit,color: Colors.white,)
                ],),
              ),
            ],
          )),
    );
  }
}
