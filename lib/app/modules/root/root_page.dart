import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:isee/app/modules/authentication/login/login.dart';
import 'package:isee/app/modules/home/home.dart';
import 'package:isee/app/modules/onboarding/onboarding.dart';
import 'package:isee/app/routes/app_pages.dart';

import 'root_controller.dart';

class Root extends StatelessWidget {
  const Root({Key key, @required String routeName})
      : _routeName = routeName,
        super(key: key);
  final String _routeName;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(builder: (_) {
      switch (_routeName) {
        case AppRoutes.HOME:
          return HomePage();
        case AppRoutes.LOGIN:
          return LoginPage();
        default:
          return OnboardingPage();
      }
    });
  }
}