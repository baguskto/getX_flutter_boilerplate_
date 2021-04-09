import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:isee/app/modules/onboarding/onboarding.dart';

// class OnboardingPage extends StatelessWidget {
//   @override
//   OnboardingPageState createState() => OnboardingPageState();
// }

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key key}) : super(key: key);

  // List<Slide> slides = new List();
  //
  // Function goToTab;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   // slides.add(
  //   //   new Slide(
  //   //     pathImage: 'assets/img/splash.png',
  //   //   ),
  //   // );
  //   // slides.add(
  //   //   new Slide(
  //   //     pathImage: 'assets/img/splash.png',
  //   //   ),
  //   // );
  //   // slides.add(
  //   //   new Slide(
  //   //     pathImage: 'assets/img/splash.png',
  //   //   ),
  //   // );
  // }

  // void onDonePress() {
  //   // Back to the first tab
  //   this.goToTab(0);
  // }
  //
  // void onTabChangeCompleted(index) {
  //   // Index of current tab is focused
  // }

  // Widget renderNextBtn() {
  //   return Icon(
  //     Icons.navigate_next,
  //     color: Colors.white,
  //     size: 35.0,
  //   );
  // }
  //
  // Widget renderDoneBtn() {
  //   return Icon(
  //     Icons.done,
  //     color: Colors.white,
  //   );
  // }
  //
  // Widget renderSkipBtn() {
  //   return Icon(
  //     Icons.skip_next,
  //     color: Colors.white,
  //   );
  // }

  // List<Widget> renderListCustomTabs() {
  //   List<Widget> tabs = new List();
  //   for (int i = 0; i < slides.length; i++) {
  //     Slide currentSlide = slides[i];
  //     tabs.add(Container(
  //       width: double.infinity,
  //       height: double.infinity,
  //       child: Container(
  //         // margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
  //         child: ListView(
  //           children: <Widget>[
  //             GestureDetector(
  //                 child: Image.asset(
  //               currentSlide.pathImage,
  //               width: MediaQuery.of(context).size.width,
  //               height: MediaQuery.of(context).size.width * 2,
  //               fit: BoxFit.fill,
  //             )
  //             ),
  //           ],
  //         ),
  //       ),
  //     ));
  //   }
  //   return tabs;
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (_) {
        return IntroSlider(
          // List slides
          // slides: this.slides,

          // Skip button
          renderSkipBtn: _.renderSkipBtn(),
          colorSkipBtn: Colors.white24,
          highlightColorSkipBtn: Colors.white,

          // Next button
          renderNextBtn: _.renderNextBtn(),

          // Done button
          renderDoneBtn: _.renderDoneBtn(),
          onDonePress: () => _.goToLoginPage(),
          onSkipPress: () => _.goToLoginPage(),
          colorDoneBtn: Colors.white24,
          highlightColorDoneBtn: Colors.white,

          // Dot indicator
          colorDot: Colors.white,
          sizeDot: 13.0,
          typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

          // Tabs
          listCustomTabs: _.renderListCustomTabs(),

          backgroundColorAllSlides: Color(0xFF3A5A97),
          refFuncGoToTab: (refFunc) {
            _.goToTab = refFunc;
          },

          // Behavior
          scrollPhysics: BouncingScrollPhysics(),

          // Show or hide status bar
          shouldHideStatusBar: true,

          // On tab change completed
          onTabChangeCompleted: _.onTabChangeCompleted,
        );
      },

    );
  }
}
