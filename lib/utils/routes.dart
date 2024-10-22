import 'package:get/get.dart';
import 'package:nabula/view/auth/login_view.dart';
import 'package:nabula/view/auth/sign_up_view.dart';
import 'package:nabula/view/dashboard/dash_board_view.dart';
import 'package:nabula/view/auth/get_started.dart';
import 'package:nabula/view/splash_view.dart';

class Routes {
  static const String splash = '/';
  static const String getStarted = '/get-started';
  static const String login = '/login';
  static const String signUp = '/sign-up';
  static const String dashboard = '/dashboard';
  static const String home = '/home';
  static const String profile = '/profile';

  static List<GetPage<dynamic>> pages = [
    GetPage(name: splash, page: () => SplashView()),
    GetPage(name: getStarted, page: () => GetStartedView()),
    GetPage(name: login, page: () => LoginView()),
    GetPage(name: signUp, page: () => SignUpView()),
    GetPage(name: dashboard, page: () => DashBoardView()),
  ];
}
