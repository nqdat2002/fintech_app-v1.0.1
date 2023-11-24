
import 'package:fintech_app/screens/home_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';
import 'package:fintech_app/screens/view_screen.dart';

import 'login_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_page/safetransactions_item_widget.dart';
import 'onboarding_page/widget_item_widget.dart';
import 'onboarding_page/managingyourmoney_item_widget.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    right: 79.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to SmartBank",
                        style: CustomTextStyles.labelLargeBluegray40001,
                      ),
                      SizedBox(height: 5.v),
                      _buildIndicatorText(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildIndicatorImage(context),
              SizedBox(height: 60.v),
              CustomElevatedButton(
                text: "Sign up",
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                },

              ),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                text: "Log in",
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle:
                CustomTextStyles.titleMediumGeneralSansVariableBluegray800,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ViewScreen()));


                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
  int sliderIndex = 0;

  /// Section Widget
  Widget _buildIndicatorImage(BuildContext context) {
    return SizedBox(
      height: 325.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 325.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason, ) {
                // sliderIndex = index;
                setState(() {
                  sliderIndex = index;
                });
              },
            ),
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return _buildCustomImageIndex(index);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 8,
                  activeDotColor: appTheme.teal400,
                  dotColor: appTheme.blueGray10002,
                  dotHeight: 8.v,
                  dotWidth: 8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicatorText(BuildContext context){
    return SizedBox(
      width: 271.h,
      child: Text(
        _getWelcomeMessage(),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style:
        CustomTextStyles.displaySmallGray90006.copyWith(
          height: 1.21,
        ),
      ),
    );
  }
  String _getWelcomeMessage() {
    if (sliderIndex == 0) {
      return "Managing your\nmoney has never\n been so easy";
    } else if (sliderIndex == 1) {
      return "Spend smarter\nevery day, all\nfrom one app.";
    } else {
      return "Safe and secure\ninternational\ntransactions";
    }
  }

  Widget _buildCustomImageIndex(int i){
    if (i == 0){
      return ManagingyourmoneyItemWidget();
    }
    if (i == 1){
      return WidgetItemWidget();
    }
    return SafetransactionsItemWidget();
  }
}
