import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onErrorContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(24.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10009,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(13.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillTealB => BoxDecoration(
        color: appTheme.teal6002b,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal400,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(11.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange50001,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillTealTL20 => BoxDecoration(
        color: appTheme.teal400,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillOrangeTL20 => BoxDecoration(
        color: appTheme.orange500,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA70001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGrayTL17 => BoxDecoration(
        color: appTheme.gray400,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillTealTL12 => BoxDecoration(
        color: appTheme.teal5002,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillTealTL201 => BoxDecoration(
        color: appTheme.teal5001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillTealBTL28 => BoxDecoration(
        color: appTheme.teal6002b.withOpacity(0.2),
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillTealBTL281 => BoxDecoration(
        color: appTheme.teal6002b.withOpacity(0.1),
        borderRadius: BorderRadius.circular(28.h),
      );
}
