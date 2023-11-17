import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class ALauncher1ThreeScreen extends StatelessWidget {
  const ALauncher1ThreeScreen({Key? key})
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
              CustomImageView(
                imagePath: ImageConstant.imgGroup18304,
                height: 66.adaptSize,
                width: 66.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
