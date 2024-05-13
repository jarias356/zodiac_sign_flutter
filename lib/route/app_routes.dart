import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:zodiac_sign_flutter/route/route_const.dart';
import 'package:zodiac_sign_flutter/ui/login/login_screen.dart';

class AppRoutes {
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: RouteConst.loginPage, page: () => LoginScreen()),
  ];

}