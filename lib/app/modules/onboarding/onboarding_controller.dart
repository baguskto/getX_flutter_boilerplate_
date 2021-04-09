import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:isee/app/data/interfaces/local/onboarding_interface.dart';
import 'package:isee/app/routes/app_pages.dart';

enum OnboardingStatus { unknown, ongoing, done }

class OnboardingController extends GetxController {
  final OnboardingInterface _onboardingInterface = Get.find();
  final onboardingStatus = OnboardingStatus.unknown.obs;
  List<Slide> slides = new List();
  Function goToTab;



  @override
  void onInit() {
    init();
    ever(onboardingStatus, (a) {
      print("On boarding status changed: $a");
    });
    super.onInit();
    slides.add(
      new Slide(
        pathImage: 'assets/img/splash.png',
      ),
    );
    slides.add(
      new Slide(
        pathImage: 'assets/img/splash.png',
      ),
    );
    slides.add(
      new Slide(
        pathImage: 'assets/img/splash.png',
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    // onPressed: () => _.goToLoginPage(),

    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  void goToLoginPage() {
    setOnboardingStatus(OnboardingStatus.done);
    Get.offAllNamed(AppRoutes.LOGIN);
  }

  void init() async {
    String _status = await _onboardingInterface.getStatus();
    setOnboardingStatus(parseStatus(_status));
  }

  OnboardingStatus parseStatus(String status) {
    switch (status) {
      case "done":
        return OnboardingStatus.done;
        break;
      case "ongoing":
        return OnboardingStatus.ongoing;
        break;
      default:
        return OnboardingStatus.unknown;
    }
  }

  void setOnboardingStatus(OnboardingStatus status) {
    String newStatus;
    switch (status) {
      case OnboardingStatus.unknown:
        newStatus = "unknown";
        break;
      case OnboardingStatus.done:
        newStatus = "done";
        break;
      case OnboardingStatus.ongoing:
        newStatus = "ongoing";
        break;
      default:
    }
    _onboardingInterface.setStatus(newStatus);
    onboardingStatus(status);
  }

  void removeOnBoardingStatus() {
    setOnboardingStatus(OnboardingStatus.unknown);
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.white,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.white,
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          // margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                    currentSlide.pathImage,
                    width: Get.width,
                    height: Get.height,
                    fit: BoxFit.fill,
                  )
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }
}
