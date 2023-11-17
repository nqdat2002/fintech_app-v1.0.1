import '../b_onboarding_2_three_screen/widgets/widget_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BOnboarding2ThreeScreen extends StatelessWidget {
  BOnboarding2ThreeScreen({Key? key})
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
            horizontal: 16.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to SmartBank",
                      style: CustomTextStyles.labelLargeBluegray40001,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 236.h,
                      child: Text(
                        "Spend smarter \nevery day, all \nfrom one app.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.displaySmallGray90006.copyWith(
                          height: 1.21,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              _buildSliderIndicator(context),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "Sign up",
              ),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                text: "Log in",
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
  Widget _buildSliderIndicator(BuildContext context) {
    return SizedBox(
      height: 334.v,
      width: 301.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 334.v,
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
              return WidgetItemWidget();
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
