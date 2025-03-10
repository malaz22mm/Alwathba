
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/constant/routes.dart';
import '../../widgets/homepage/drawerhome.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? lang;
  bool notify = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primarycolor,
        title: const Text('Settings',style: TextStyle(color: Colors.white),),
        actions: [
          Image.asset(AppImage.imagethree),
        ],
        elevation: 0.0,
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
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColor.primarycolor, borderRadius: BorderRadius.circular(5)),
              child: const Row(
                children: [
                  Text(
                    "Verison",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    "1.0.0",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColor.grey, borderRadius: BorderRadius.circular(5)),
              child: DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                  disabledItemFn: (String s) => s.startsWith('I'),
                ),
                decoratorProps: DropDownDecoratorProps(
                  decoration : InputDecoration(
                    labelText: lang ?? "Select Your Language",
                    labelStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    lang = value!;
                  });
                  print(lang);
                },
                selectedItem: lang,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: AppColor.primarycolor, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Text(
                    "Notification",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: notify,
                    onChanged: (bool val) {
                      setState(() {
                        notify = val;
                        print(notify);
                      });
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade800, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Text(
                    "Data Protection",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(Approute.dataprotection);
                    },
                    color: Colors.red,
                    child: const Text("Veiw"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade800, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Text(
                    "Legal Warning",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(Approute.legalwarning);
                    },
                    color: Colors.red,
                    child: const Text("Veiw"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
