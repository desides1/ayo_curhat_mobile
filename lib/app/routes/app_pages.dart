import 'package:ayo_curhat/app/modules/bindings/navbottombar_binding.dart';
// import 'package:ayo_curhat/app/modules/views/bottomNav.dart';
import 'package:ayo_curhat/app/modules/views/navbottombar_view.dart';
import 'package:get/get.dart';

import '../modules/bindings/home_binding.dart';
import '../modules/bindings/login_binding.dart';
import '../modules/bindings/profile_binding.dart';
import '../modules/bindings/publik_curhat_binding.dart';
import '../modules/bindings/register_binding.dart';
import '../modules/bindings/splash_screen_binding.dart';
import '../modules/bindings/tweet_binding.dart';
import '../modules/bindings/tweet_top_info_binding.dart';
import '../modules/bindings/welcome_screen_binding.dart';
import '../modules/model/home_model.dart';
// import '../modules/navbottombar/bindings/navbottombar_binding.dart';
// import '../modules/navbottombar/views/navbottombar_view.dart';
// import '../modules/views/bottomNav.dart';
import '../modules/views/home_view.dart';
import '../modules/views/login_view.dart';
import '../modules/views/profile_view.dart';
import '../modules/views/publik_curhat_view.dart';
import '../modules/views/register_view.dart';
import '../modules/views/splash_screen_view.dart';
import '../modules/views/tweet_top_info_view.dart';
import '../modules/views/tweet_view.dart';
import '../modules/views/welcome_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.PUBLIK_CURHAT,
      page: () => PublikCurhatView(),
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
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TWEET_TOP_INFO,
      page: () => const TweetTopInfoView(),
      binding: TweetTopInfoBinding(),
    ),
    GetPage(
      name: _Paths.TWEET,
      page: () => TweetView(
        tweet: tweets[0],
      ),
      binding: TweetBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NAVBOTTOMBAR,
      page: () => NavbottombarView(),
      binding: NavbottombarBinding(),
    ),
  ];
}
