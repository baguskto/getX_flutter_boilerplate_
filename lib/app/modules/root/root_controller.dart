import 'package:get/get.dart';
import 'package:isee/app/data/interfaces/local/local_authentication_interface.dart';
import 'package:isee/app/data/models/credentials.dart';
import 'package:isee/app/modules/authentication/authentication_controller.dart';
import 'package:isee/app/modules/onboarding/onboarding.dart';
import 'package:isee/app/routes/app_pages.dart';

class RootController extends GetxController {
  LocalAuthenticationInterface _localAuth = Get.find<LocalAuthenticationInterface>();
  OnboardingController _onboardingController = Get.find<OnboardingController>();

  AuthenticationStatus _authenticationStatus;
  get initialRoute => this.getInitialRoute();
  get authenticationStatus => this._authenticationStatus;

  void setAuthenticationStatus(AuthenticationStatus status) {
    _authenticationStatus = status;
  }

  Future<String> getInitialRoute() async {
    Credentials session = await _localAuth.getSession();
    OnboardingStatus _onBoardingStatus = _onboardingController.onboardingStatus.value;

    if (_onBoardingStatus == OnboardingStatus.unknown && session == null) {
      return AppRoutes.ONBOARDING;
    } else if (session != null) {
      return AppRoutes.HOME;
    }
    return AppRoutes.LOGIN;
  }
}