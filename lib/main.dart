import 'package:ecomon_time_flutter_app/pages/SplashPage.dart';
import 'package:ecomon_time_flutter_app/pages/WelcomeScreen.dart';
import 'package:ecomon_time_flutter_app/pages/buyer/WelcomePageBuyer.dart';
import 'package:ecomon_time_flutter_app/pages/login/loginCode.dart';
import 'package:ecomon_time_flutter_app/pages/login/login.dart';
import 'package:ecomon_time_flutter_app/pages/registration/regBuyerMain.dart';
import 'package:ecomon_time_flutter_app/pages/seller/WelcomePageSeller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/splashPage',

      getPages: [

        GetPage(name: '/splashPage', page: () => SplashPage()),
        GetPage(name: '/welcomeScreen', page: () => WelcomeScreen()),
        GetPage(name: '/welcomePageBuyer', page: () => WelcomePageBuyer()),
        GetPage(name: '/welcomePageSeller', page: () => WelcomePageSeller()),
        GetPage(name: '/loginSeller', page: () => LoginSellerPage()),
        GetPage(name: '/loginCodeSeller', page: () => LoginCodeSellerPage()),
        GetPage(name: '/regBuyerMain', page: () => RegBuyerMainPage()),

      ],

      // routingCallback: (routing) async {
      //   if (FirebaseAuth.instance.currentUser != null) {
      //
      //   } else {
      //     if (routing.current != 'login' && routing.current != 'registration') {
      //       WidgetsBinding.instance
      //           .addPostFrameCallback((_) => Get.offNamed('welcome'));
      //     }
      //   }
      // },
    );
  }
}
