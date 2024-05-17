import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/forget_password_one_screen/binding/forget_password_one_binding.dart';
import '../presentation/forget_password_one_screen/forget_password_one_screen.dart';
import '../presentation/forget_password_two_screen/binding/forget_password_two_binding.dart';
import '../presentation/forget_password_two_screen/forget_password_two_screen.dart';
import '../presentation/home_bottom_navigation/home_bottom_navigation.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/main_navigation/main_bottom_navigation.dart';
import '../presentation/user_screen/binding/user_binding.dart';
import '../presentation/user_screen/user_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';
  static const String forgetPasswordTwoScreen = '/forget_password_two_screen';
  static const String forgetPasswordOneScreen = '/forget_password_one_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static const String homeBottomNavigation = '/home_bottom_navigation';
  static const String homeScreen = '/home_screen';
  static const String userScreen = '/user_screen';
  static const String mainNavigation = '/main_navigation';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: forgetPasswordTwoScreen,
      page: () => ForgetPasswordTwoScreen(),
      bindings: [ForgetPasswordTwoBinding()],
    ),
    GetPage(
      name: forgetPasswordOneScreen,
      page: () => ForgetPasswordOneScreen(),
      bindings: [ForgetPasswordOneBinding()],
    ),
    GetPage(
      name: homeBottomNavigation,
      page: () => homeBottomBar(),
      // bindings: [UserBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: mainNavigation,
      page: () => mainBottomBar(),
      // bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    )
  ];
}