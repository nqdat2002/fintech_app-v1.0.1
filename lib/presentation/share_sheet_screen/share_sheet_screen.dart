import '../share_sheet_screen/widgets/airdrop_item_widget.dart';
import '../share_sheet_screen/widgets/sharetoapp_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:fintech_app/widgets/custom_outlined_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ShareSheetScreen extends StatelessWidget {
  ShareSheetScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController actionRowController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 760.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16.v),
                    decoration: AppDecoration.fillGray5003.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL13,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildSharingInfoClose(context),
                        SizedBox(height: 16.v),
                        Opacity(
                          opacity: 0.5,
                          child: Divider(
                            color: appTheme.gray800.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildAirDrop(context),
                        SizedBox(height: 16.v),
                        Opacity(
                          opacity: 0.5,
                          child: Divider(
                            color: appTheme.gray800.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildShareToApp(context),
                        SizedBox(height: 22.v),
                        CustomOutlinedButton(
                          text: "Copy",
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 30.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIcon,
                              height: 20.v,
                              width: 16.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildRowsDividers(context),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32.h),
                            child: Text(
                              "Edit Actions...",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                      ],
                    ),
                  ),
                ),
              ),
              _buildBlackBackground(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSharingInfoClose(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShareIconSquare,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 8.v,
            ),
            child: Text(
              "Hi,...",
              style: CustomTextStyles.bodyMediumBlack900_2,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAirDrop(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 100.v,
          child: ListView.separated(
            padding: EdgeInsets.only(
              left: 14.h,
              right: 31.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 17.h,
              );
            },
            itemCount: 7,
            itemBuilder: (context, index) {
              return AirdropItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShareToApp(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 78.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 31.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return SharetoappItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsDividers(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlineGray30004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFormField(
            controller: actionRowController,
            hintText: "Save to Files",
            hintStyle: CustomTextStyles.bodyLargeBlack900_1,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 14.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAction,
                height: 21.v,
                width: 22.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              bottom: 13.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
          ),
          Opacity(
            opacity: 0.5,
            child: Divider(
              color: appTheme.gray800.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBlackBackground(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgBlackBackground,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgBlackBackground,
          height: 14.v,
          width: 375.h,
        ),
      ),
    );
  }
}
