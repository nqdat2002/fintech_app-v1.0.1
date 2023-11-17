import '../c_onboarding_3_three_screen/widgets/safetransactions_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class COnboarding3ThreeScreen extends StatelessWidget {
  COnboarding3ThreeScreen({Key? key})
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
            horizontal: 4.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 511.v,
                width: 366.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to SmartBank",
                              style: CustomTextStyles.labelLargeBluegray40001,
                            ),
                            SizedBox(height: 5.v),
                            SizedBox(
                              width: 255.h,
                              child: Text(
                                "Safe and secure international transactions ",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.displaySmallGray90006
                                    .copyWith(
                                  height: 1.21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildIllustrationSection(context),
                  ],
                ),
              ),
              SizedBox(height: 50.v),
              CustomElevatedButton(
                text: "Sign up",
                margin: EdgeInsets.symmetric(horizontal: 12.h),
              ),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                text: "Log in",
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle:
                    CustomTextStyles.titleMediumGeneralSansVariableBluegray800,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIllustrationSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 374.v,
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
              return SafetransactionsItemWidget();
            },
          ),
          SizedBox(height: 16.v),
          SizedBox(
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
        ],
      ),
    );
  }
}
