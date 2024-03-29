import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSubtitleFourteen extends StatelessWidget {
  AppbarSubtitleFourteen({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        // child: CircleAvatar(
        //   radius: 15.5, // Adjust the radius to your desired size
        //   backgroundColor: Colors.blue,
        // // Change the background color
        //   child: Center(
        //     child: Text(
        //       text,
        //       style: CustomTextStyles.labelMediumManropePrimaryContainer.copyWith(
        //         color: theme.colorScheme.primaryContainer.withOpacity(1),
        //       ),
        //     ),
        //   ),
        // ),


        child: Container(
          width: 31.h,
          height: 31.h,
          decoration: AppDecoration.fillTeal400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Center(
            child: Text(
              text,
              style: CustomTextStyles.labelMediumManropePrimaryContainer.copyWith(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            )
          ),
        ),
      ),
    );
  }
}
