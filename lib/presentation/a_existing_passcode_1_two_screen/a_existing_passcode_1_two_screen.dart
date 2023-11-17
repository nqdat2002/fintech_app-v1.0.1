import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class AExistingPasscode1TwoScreen extends StatelessWidget {
  const AExistingPasscode1TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 241.h,
                          margin: EdgeInsets.only(right: 101.h),
                          child: Text("Enter your existing passcode",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.29)))),
                  SizedBox(height: 63.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 22.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  Spacer(),
                  SizedBox(height: 58.v),
                  Padding(
                      padding: EdgeInsets.only(left: 51.h, right: 41.h),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("1",
                                      style: theme.textTheme.displaySmall),
                                  Text("2",
                                      style: theme.textTheme.displaySmall),
                                  Text("3", style: theme.textTheme.displaySmall)
                                ])),
                        SizedBox(height: 35.v),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("4",
                                      style: theme.textTheme.displaySmall),
                                  Text("5",
                                      style: theme.textTheme.displaySmall),
                                  Text("6", style: theme.textTheme.displaySmall)
                                ])),
                        SizedBox(height: 35.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("7",
                                      style: theme.textTheme.displaySmall),
                                  Text("8",
                                      style: theme.textTheme.displaySmall),
                                  Text("9", style: theme.textTheme.displaySmall)
                                ])),
                        SizedBox(height: 31.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFaceId1,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 4.v, bottom: 9.v)),
                              Spacer(flex: 47),
                              Text("0", style: theme.textTheme.displaySmall),
                              Spacer(flex: 52),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftBlack900,
                                  height: 18.v,
                                  width: 20.h,
                                  margin:
                                      EdgeInsets.only(top: 12.v, bottom: 15.v))
                            ])
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(14.h, 15.v, 345.h, 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
