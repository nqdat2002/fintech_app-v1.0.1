import '../a_onboarding_1_three_screen/widgets/managingyourmoney_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login_screen/login_screen.dart';

class AOnboarding1ThreeScreen extends StatelessWidget {
  AOnboarding1ThreeScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

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
                      SizedBox(
                        width: 271.h,
                        child: Text(
                          "Managing your\nmoney has never been so easy.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.displaySmallGray90006.copyWith(
                            height: 1.21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildManagingYourMoneySection(context),
              SizedBox(height: 50.v),
              CustomElevatedButton(
                text: "Sign up",
                margin: EdgeInsets.symmetric(horizontal: 8.h),

              ),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                text: "Log in",
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle:
                    CustomTextStyles.titleMediumGeneralSansVariableBluegray800,
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildManagingYourMoneySection(BuildContext context) {
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
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return ManagingyourmoneyItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 1,
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
}
