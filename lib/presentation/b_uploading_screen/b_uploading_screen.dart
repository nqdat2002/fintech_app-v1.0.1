import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class BUploadingScreen extends StatelessWidget {
  const BUploadingScreen({Key? key})
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
              SizedBox(
                height: 87.v,
                width: 76.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 76.adaptSize,
                        width: 76.adaptSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            38.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.secondaryContainer,
                            width: 4.h,
                            strokeAlign: strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse11,
                      height: 51.v,
                      width: 56.h,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "Uploading...",
                style: CustomTextStyles.labelLargeGray90008SemiBold_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
