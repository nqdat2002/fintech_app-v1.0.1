import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup18304,
                    height: 66.adaptSize,
                    width: 66.adaptSize,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "SmartBank",
                    style: CustomTextStyles.headlineSmallAvenirBluegray900,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
