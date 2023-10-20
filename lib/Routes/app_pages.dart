import 'package:get/get.dart';

import 'package:test/auth/loginScreen.dart';
import 'package:test/auth/signup.dart';
import 'package:test/view/homescreen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static var initial = _Paths.signup;
  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => const Login(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignUp(),
    ),
     GetPage(
      name: _Paths.home,
      page: () =>  HomeScreen(),
    ),
  ];
}
