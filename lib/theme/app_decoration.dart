import 'package:flutter/material.dart';
import 'package:fintech_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.4),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10003,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillCyanA => BoxDecoration(
        color: appTheme.cyanA200,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10004 => BoxDecoration(
        color: appTheme.gray10004.withOpacity(0.74),
      );
  static BoxDecoration get fillGray100041 => BoxDecoration(
        color: appTheme.gray10004.withOpacity(0.94),
      );
  static BoxDecoration get fillGray10005 => BoxDecoration(
        color: appTheme.gray10005,
      );
  static BoxDecoration get fillGray10006 => BoxDecoration(
        color: appTheme.gray10006,
      );
  static BoxDecoration get fillGray100e5 => BoxDecoration(
        color: appTheme.gray100E5.withOpacity(0.8),
      );
  static BoxDecoration get fillGray30002 => BoxDecoration(
        color: appTheme.gray30002,
      );
  static BoxDecoration get fillGray30003 => BoxDecoration(
        color: appTheme.gray30003,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray500 => BoxDecoration(
        color: appTheme.gray500,
      );
  static BoxDecoration get fillGray5003 => BoxDecoration(
        color: appTheme.gray5003,
      );
  static BoxDecoration get fillGray6001e => BoxDecoration(
        color: appTheme.gray6001e,
      );
  static BoxDecoration get fillGray90005 => BoxDecoration(
        color: appTheme.gray90005,
      );
  static BoxDecoration get fillGray90007 => BoxDecoration(
        color: appTheme.gray90007,
      );
  static BoxDecoration get fillGrayB => BoxDecoration(
        color: appTheme.gray100B2,
      );
  static BoxDecoration get fillGrayE => BoxDecoration(
        color: appTheme.gray100E5,
      );
  static BoxDecoration get fillGrayEf => BoxDecoration(
        color: appTheme.gray300Ef,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA200,
      );
  static BoxDecoration get fillIndigoA400 => BoxDecoration(
        color: appTheme.indigoA400,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime30001,
      );
  static BoxDecoration get fillLime30001 => BoxDecoration(
        color: appTheme.lime30001.withOpacity(0.31),
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.46),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink100,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
      );
  static BoxDecoration get fillTeal400 => BoxDecoration(
        color: appTheme.teal400,
      );
  static BoxDecoration get fillTeal50 => BoxDecoration(
        color: appTheme.teal50,
      );
  static BoxDecoration get fillTeal5001 => BoxDecoration(
        color: appTheme.teal5001,
      );
  static BoxDecoration get fillTeal5002 => BoxDecoration(
        color: appTheme.teal5002,
      );
  static BoxDecoration get fillTeal5003 => BoxDecoration(
        color: appTheme.teal5003,
      );
  static BoxDecoration get fillTeal600 => BoxDecoration(
        color: appTheme.teal600,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberAToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.99, 0.99),
          colors: [
            appTheme.amberA400,
            appTheme.purple50,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayEdToBlueGrayEd => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray200Ed,
            appTheme.blueGray200Ed01,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray800,
            appTheme.teal40002,
            appTheme.blueGray800,
          ],
        ),
      );
  static BoxDecoration get gradientCyanAToOnError => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.99, 0.99),
          colors: [
            appTheme.cyanA20001,
            theme.colorScheme.onError,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan900,
            appTheme.teal600,
          ],
        ),
      );
  static BoxDecoration get gradientLimeToOnError => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.99, 0.99),
          colors: [
            appTheme.lime30001,
            theme.colorScheme.onError,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onErrorContainer.withOpacity(0),
            appTheme.cyan10066,
            appTheme.cyan90001,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToPurpleA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.99, 0.99),
          colors: [
            appTheme.purple700,
            appTheme.purpleA200,
          ],
        ),
      );
  static BoxDecoration get gradientTealAToOnError => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.99, 0.99),
          colors: [
            appTheme.tealA200,
            theme.colorScheme.onError,
          ],
        ),
      );
  static BoxDecoration get gradientTealToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.06),
          end: Alignment(0.99, 0.99),
          colors: [
            appTheme.teal600,
            appTheme.purple50,
          ],
        ),
      );
  static BoxDecoration get gradientTealToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.teal800,
            appTheme.teal300,
            appTheme.teal800,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray50D6.withOpacity(0.94),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.3),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration();
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray1003f02,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray1003f01 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray1003f01,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: appTheme.deepOrangeA400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration();
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border(
          top: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray20001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20004 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray20004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray2003f => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray2003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30004 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30005 => BoxDecoration();
  static BoxDecoration get outlineGray300051 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30005,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray4000c => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4003f01 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f01,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4003f02 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f02,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4003f04 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f04,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4003f041 => BoxDecoration();
  static BoxDecoration get outlineGray50038 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray50038,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray5003f => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray5003f1 => BoxDecoration();
  static BoxDecoration get outlineGray6000f => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray6000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              15,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray70019 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray70019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayC => BoxDecoration();
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f03,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoF => BoxDecoration();
  static BoxDecoration get outlineLightBlueA => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.lightBlueA70001.withOpacity(0.15),
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightBlueF => BoxDecoration();
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.lightBlueA70001,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.46),
        border: Border.all(
          color: appTheme.teal400,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineTeal400 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.teal400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineTeal50 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.teal50,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineTeal600 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.teal600,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration();
  static BoxDecoration get outline2 => BoxDecoration();
  static BoxDecoration get outline3 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder131 => BorderRadius.circular(
        131.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL16 => BorderRadius.vertical(
        bottom: Radius.circular(16.h),
      );
  static BorderRadius get customBorderBL8 => BorderRadius.vertical(
        bottom: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL13 => BorderRadius.vertical(
        top: Radius.circular(13.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder148 => BorderRadius.circular(
        148.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder31 => BorderRadius.circular(
        31.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    