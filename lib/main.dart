
import 'package:alwathba/core/classes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'bindings/initialbindings.dart';
import 'core/constant/color.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initiale();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
     return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
          return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          locale: controller.langauge,
    translations: MyTranslation(),
    title: 'Flutter Demo',
    theme: ThemeData(
    textTheme: const TextTheme(
    bodyLarge: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 25),
    bodyMedium: TextStyle(
    height: 1,
    color: AppColor.grey,
    fontWeight: FontWeight.bold))),
    getPages: routes,
    initialBinding: InitialBindings(),

    );

    });

    }
}
