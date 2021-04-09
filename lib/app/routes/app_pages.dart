import 'package:get/get.dart';
import 'package:isee/app/modules/authentication/login/login.dart';
import 'package:isee/app/modules/home/home.dart';
import 'package:isee/app/modules/onboarding/onboarding.dart';
import 'package:isee/app/modules/root/root.dart';
import 'package:isee/app/modules/splash_screen/splash.dart';
part './app_routes.dart';

class AppPages {
  List<GetPage> getPages(String routeName) {
    return [
      GetPage(
          name: AppRoutes.ROOT,
          binding: RootBinding(),
          page: () => Root(routeName: routeName)),
      GetPage(
          name: AppRoutes.SPLASH,
          page: () => SplashPage(),
          binding: SplashBinding()),
      GetPage(
          name: AppRoutes.ONBOARDING,
          page: () => OnboardingPage(),
          binding: OnboardingBinding()),
      GetPage(
          name: AppRoutes.LOGIN,
          page: () => LoginPage(),
          binding: LoginBinding()),
      GetPage(
          name: AppRoutes.HOME, page: () => HomePage(), binding: HomeBinding()),
    ];
  }
}
