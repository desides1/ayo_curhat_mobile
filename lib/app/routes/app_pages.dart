import 'package:get/get.dart';

<<<<<<< HEAD
import '../modules/bindings/login_binding.dart';
import '../modules/views/login_view.dart';
import '../modules/bindings/publik_curhat_binding.dart';
import '../modules/views/publik_curhat_view.dart';
import '../modules/bindings/register_binding.dart';
import '../modules/views/register_view.dart';
import '../modules/bindings/splash_screen_binding.dart';
import '../modules/views/splash_screen_view.dart';
import '../modules/splashScreen/bindings/welcome_screen_binding.dart';
=======
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/publikCurhat/bindings/publik_curhat_binding.dart';
import '../modules/publikCurhat/views/publik_curhat_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';
import '../modules/welcomeScreen/bindings/welcome_screen_binding.dart';
>>>>>>> parent of 888049e (login connect to api)
import '../modules/welcomeScreen/views/welcome_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.PUBLIK_CURHAT,
      page: () => const PublikCurhatView(),
      binding: PublikCurhatBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_SCREEN,
      page: () => const WelcomeScreenView(),
      binding: WelcomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
  ];
}
