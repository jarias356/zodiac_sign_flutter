import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:zodiac_sign_flutter/route/route_const.dart';
import 'package:zodiac_sign_flutter/ui/welcome/welcome_screen.dart';

import '../ui/getsign/get_sign_screen.dart';
import '../ui/login/login_screen.dart';

class AppRoutes {
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: RouteConst.loginPage, page: () => LoginScreen()),
    GetPage(name: RouteConst.welcomePage, page: () => WelcomeScreen()),
    GetPage(name: RouteConst.mySignPage, page: () => const GetSignScreen()),
    // GetPage(name: RouteConst.compatibilityPages, page: () =>  const GetCompatibility ()),
    //  GetPage(name: RouteConst.moreGetPages, page: () =>  const GetMoreSign()),
  ];

}
