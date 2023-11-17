import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CTopTheAccountDialog extends StatelessWidget {
  const CTopTheAccountDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 52.v,
      ),
      child: Column(
        children: [
          Spacer(),
          _buildFrame(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgLoadingIcon,
            height: 86.v,
            width: 76.h,
          ),
          SizedBox(height: 40.v),
          SizedBox(
            width: 218.h,
            child: Text(
              "Your transaction is being\nprocessed...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumSatoshiVariableErrorContainer
                  .copyWith(
                height: 1.32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
