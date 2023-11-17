import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CameraAccessScreen extends StatelessWidget {
  const CameraAccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.blueGray800,
                appTheme.teal40002,
                appTheme.blueGray800,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            child: Column(
              children: [
                _buildTitles(context),
                SizedBox(height: 32.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 236.v,
                    width: 197.h,
                    margin: EdgeInsets.only(left: 61.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup48095583,
                          height: 199.v,
                          width: 188.h,
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 105.adaptSize,
                            width: 105.adaptSize,
                            margin: EdgeInsets.only(left: 32.h),
                            decoration: BoxDecoration(
                              color: appTheme.cyanA200,
                              borderRadius: BorderRadius.circular(
                                52.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCameraAccessIllustration,
                          height: 154.v,
                          width: 197.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 36.v),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    height: 12.v,
                    width: 144.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(
                        72.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 68.v),
                _buildButton(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNavigationControls,
        margin: EdgeInsets.only(
          left: 1.h,
          right: 330.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitles(BuildContext context) {
    return SizedBox(
      height: 183.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 326.h,
              child: Text(
                "We’ll need to access your camera before continuing.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.displaySmallOnErrorContainer.copyWith(
                  height: 1.21,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.8,
              child: SizedBox(
                width: 343.h,
                child: Text(
                  "You’ll need to submit a selfie and a photo of the document before continuing. The photos will be used to verify your identity.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeOnErrorContainerSemiBold
                      .copyWith(
                    height: 1.38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          text: "Allow camera access",
          buttonStyle: CustomButtonStyles.fillLime,
          buttonTextStyle:
              CustomTextStyles.titleSmallGeneralSansVariableTeal90001,
        ),
        SizedBox(height: 16.v),
        CustomElevatedButton(
          text: "Not right now",
          buttonStyle: CustomButtonStyles.fillBlueGray,
          buttonTextStyle:
              CustomTextStyles.titleSmallGeneralSansVariableOnErrorContainer,
        ),
      ],
    );
  }
}
