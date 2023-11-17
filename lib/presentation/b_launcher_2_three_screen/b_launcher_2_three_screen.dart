import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class BLauncher2ThreeScreen extends StatelessWidget {
  const BLauncher2ThreeScreen({Key? key})
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
                imagePath: ImageConstant.imgGroup18304BlueGray900,
                height: 94.adaptSize,
                width: 94.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
