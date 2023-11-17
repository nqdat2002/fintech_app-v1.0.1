import '../verify_identity_type_screen/widgets/methodsofverification_item_widget.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class VerifyIdentityTypeScreen extends StatelessWidget {
  const VerifyIdentityTypeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 58.v,
          ),
          child: Column(
            children: [
              _buildTextContainer(context),
              SizedBox(height: 22.v),
              _buildMethodOfVerification(context),
              SizedBox(height: 24.v),
              _buildRequirementsContainer(context),
              SizedBox(height: 23.v),
              Text(
                "Skip for now",
                style: CustomTextStyles.titleSmallGeneralSansVariablePrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTextContainer(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 38.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify your identity",
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 4.v),
            Opacity(
              opacity: 0.6,
              child: SizedBox(
                width: 304.h,
                child: Text(
                  "We need to check that you are who you say you are. Here’s how you can do it.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.38,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMethodOfVerification(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Method of verification",
          style: CustomTextStyles.labelLargeSFProTextGray90008,
        ),
        SizedBox(height: 8.v),
        Container(
          decoration: AppDecoration.outlineGrayC,
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 8.v,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return MethodsofverificationItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRequirementsContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Make sure that your document:",
          style: CustomTextStyles.labelLargeSFProTextGray90008,
        ),
        SizedBox(height: 7.v),
        Container(
          width: 343.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineGray300051.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              _buildButtons(
                context,
                msg: "it hasn’t expired",
              ),
              SizedBox(height: 25.v),
              _buildButtons(
                context,
                msg: "it hasn’t expired",
              ),
              SizedBox(height: 25.v),
              _buildButtons(
                context,
                msg: "it hasn’t expired",
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildButtons(
    BuildContext context, {
    required String msg,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup18318,
          height: 12.v,
          width: 16.h,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            msg,
            style: CustomTextStyles.bodyMediumGray90008.copyWith(
              color: appTheme.gray90008,
            ),
          ),
        ),
      ],
    );
  }
}
