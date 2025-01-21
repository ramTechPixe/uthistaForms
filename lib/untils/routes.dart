// import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:uthistaapp/untils/export_file.dart';

class Routes {
  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: kSplash,
        transition: Transition.rightToLeft,
        page: () => SplashScreen()),
    GetPage(
        name: kSingIn,
        transition: Transition.rightToLeft,
        page: () => SignIn()),
    GetPage(
        name: kHome, transition: Transition.rightToLeft, page: () => Home()),
    //
  ];
}
