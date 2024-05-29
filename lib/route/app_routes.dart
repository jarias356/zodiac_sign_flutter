import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:zodiac_sign_flutter/route/route_const.dart';
import 'package:zodiac_sign_flutter/ui/getcompatibility/get_compatibility_screen.dart';
import 'package:zodiac_sign_flutter/ui/getsign/get_more_sign.dart';
import 'package:zodiac_sign_flutter/ui/login/login_screen.dart';
import 'package:zodiac_sign_flutter/ui/getsign/get_sign_screen.dart';

class AppRoutes {
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: RouteConst.loginPage, page: () => LoginScreen()),
    GetPage(name: RouteConst.getPages, page: () => const GetSign()),
    GetPage(name: RouteConst.compatibilityPages, page: () =>  const GetCompatibility ()),
     GetPage(name: RouteConst.moreGetPages, page: () =>  const GetMoreSign()),
  ];

}
