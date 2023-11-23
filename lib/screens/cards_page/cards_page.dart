import '../cards_page/widgets/cardscontainer_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({Key? key})
      : super(
          key: key,
        );

  @override
  CardsPageState createState() => CardsPageState();
}

class CardsPageState extends State<CardsPage>
    with AutomaticKeepAliveClientMixin<CardsPage> {
  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCardsContainer(context),
                    SizedBox(height: 13.v),
                    Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 148.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: sliderIndex,
                        count: 2,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          activeDotColor: Color(0X1212121D),
                          dotHeight: 8.v,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildListItems(context),
                    SizedBox(height: 11.v),
                    _buildQuickActions(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardsContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 206.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason,) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return CardscontainerItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildListItems(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineGray4003f04.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillTealTL201,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconsIconBackground40px2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transactions",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                SizedBox(height: 4.v),
                Text(
                  "You can view all transactions",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFrame34402,
            height: 40.v,
            width: 35.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickActions(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      decoration: AppDecoration.outlineGray4003f041,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "Quick actions",
              style: CustomTextStyles.labelLargeSFProTextGray800,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillTealTL201,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconsIconBackground40px3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Manage card",
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "You can manage your card here",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame34402,
                        height: 40.v,
                        width: 32.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillTealTL201,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconsIconBackground40px4,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Show details",
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "Reveal your card details",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 34.v,
                        width: 64.h,
                        text: "Show",
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle:
                            CustomTextStyles.labelMediumManropeErrorContainer,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillTealTL201,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconsIconBackground40px5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get help",
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "You can request help now",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 34.v,
                        width: 64.h,
                        text: "Help",
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle:
                            CustomTextStyles.labelMediumManropeErrorContainer,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 7.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.fillTealTL201,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconsIconBackground40px6,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Freeze card",
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "You can freeze your card",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgButtonsGray600,
                        height: 31.v,
                        width: 51.h,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
