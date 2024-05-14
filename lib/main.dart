
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/di/zodiac_sign_app.dart';
import 'package:zodiac_sign_flutter/route/app_routes.dart';
import 'package:zodiac_sign_flutter/route/route_const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ZodiacSign();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zodiacal Sign',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white, brightness: Brightness.light),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, brightness: Brightness.dark),
          useMaterial3: true,
        ),
        initialRoute: RouteConst.loginPage,
        getPages: AppRoutes.routes
    );
  }
}

