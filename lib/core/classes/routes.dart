
import 'package:alwathba/core/middleware/mymiddleware.dart';
import 'package:alwathba/views/add_comment_screen.dart';
import 'package:alwathba/views/screens/auth/login.dart';
import 'package:alwathba/views/screens/auth/signup.dart';
import 'package:alwathba/views/screens/auth/success_signup.dart';
import 'package:alwathba/views/screens/auth/verifycodeemail.dart';
import 'package:alwathba/views/screens/homepage/matches.dart';
import 'package:alwathba/views/screens/homepage/news.dart';
import 'package:alwathba/views/screens/homepage/newsone.dart';
import 'package:alwathba/views/screens/homepage/playerpage.dart';
import 'package:alwathba/views/screens/homepage/players.dart';
import 'package:alwathba/views/screens/homepage/profile.dart';
import 'package:alwathba/views/screens/homepage/syrian%20league.dart';
import 'package:alwathba/views/screens/onbording.dart';
import 'package:alwathba/views/screens/settings/dataprotection.dart';
import 'package:alwathba/views/screens/settings/legalwarning.dart';
import 'package:alwathba/views/screens/settings/setting.dart';
import 'package:alwathba/views/widgets/homepage/bottomnavigation.dart';
import 'package:get/get.dart';

import '../constant/routes.dart';

List<GetPage<dynamic>>? routes = [
  //GetPage(name: "/", page: ()=>const Language(), middlewares: [MyMiddleWare()]),
  //Auth
  GetPage(name:  '/',page: (() => Login()),middlewares: [MyMiddleWare()]),
  GetPage(name: Approute.signUp, page: (() => const SignUp())),
  //GetPage(name: Approute.forgetPassword, page: (() =>  ForgetPassword())),
  GetPage(name: Approute.successignUp, page: (() => SuccessSignUp())),
  GetPage( name: Approute.verifycodemail, page: (() => const VerifyCodeSignUp())),
  //OnBoarding
  GetPage(name: Approute.onboarding, page: (() => const OnBoarding())),
  //==================HomePage=====================================
 // GetPage(name: "/", page: () => const SplashScreen()),
  GetPage(name:Approute.bottomnavigation, page: () => const BottomNavigation()),
  GetPage(name:Approute.news,page: () => const News(),),
  GetPage(name:Approute.newsone ,page: () => const NewsOne(),),
  GetPage(name:Approute.players ,page: () =>  const Players(),),
  GetPage(name:Approute.playerpage ,page: () => const PlayerPage(),),
  GetPage(name:Approute.matches ,page: () => const Matches(),),
  GetPage(name:Approute.syrianleague ,page: () => const SyrianLeague(),),
  GetPage(name:Approute.profile ,page: () => const Profile(),),
  //======================Settings=================================
  GetPage(name:Approute.settings ,page: () => const Settings(),),
  GetPage(name:Approute.dataprotection ,page: () => const DataProtection(),),
  GetPage(name:Approute.legalwarning ,page: () => const LegalWarning(),),
  GetPage(name: Approute.addcomment, page: ()=>const AddCommentScreen())
];
