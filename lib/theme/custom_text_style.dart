import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.39),
      );
  static get bodyLargeBluegray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumEudoxusSansGray50001 =>
      theme.textTheme.bodyMedium!.eudoxusSans.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyMediumGray90008 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90008,
      );
  static get bodyMediumGray90008_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
      );
  static get bodyMediumIndigo5099 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo5099,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSFProDisplayGray60001 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumSFProOnErrorContainer =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumTeal600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal600,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodySmallBlack90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallGeneralSansVariableBlack900 =>
      theme.textTheme.bodySmall!.generalSansVariable.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
        fontSize: 11.fSize,
      );
  static get bodySmallGray800_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002.withOpacity(0.53),
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimary11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
      );
  static get bodySmallSFProDisplayGray60001 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.gray60001.withOpacity(0.46),
      );
  static get bodySmallSFProDisplayGray60001_1 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallTeal400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal400,
        fontSize: 11.fSize,
      );
  // Display text style
  static get displayMedium40 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
      );
  static get displaySmallGray5002 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray5002,
      );
  static get displaySmallGray90006 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray90006,
      );
  static get displaySmallOnErrorContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get displaySmallPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  // Headline text style
  static get headlineMediumBluegray900 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineMediumGeneralSansVariableGray90004 =>
      theme.textTheme.headlineMedium!.generalSansVariable.copyWith(
        color: appTheme.gray90004,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumManropeBluegray400 =>
      theme.textTheme.headlineMedium!.manrope.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumOnErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get headlineMediumSFProTextPrimary =>
      theme.textTheme.headlineMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w300,
      );
  static get headlineMediumTeal600 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.teal600,
      );
  static get headlineSmallAvenirBluegray900 =>
      theme.textTheme.headlineSmall!.avenir.copyWith(
        color: appTheme.blueGray900,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.67),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get labelLargeBluegray400SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.56),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray400SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray400SemiBold_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeBluegray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray800SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeDeeporangeA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray5002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5002.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90002_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002.withOpacity(0.53),
      );
  static get labelLargeGray90004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90004,
      );
  static get labelLargeGray90004SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90006 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90006.withOpacity(0.64),
      );
  static get labelLargeGray90008 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray9000812 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.64),
        fontSize: 12.fSize,
      );
  static get labelLargeGray90008SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90008SemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90008SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90008_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.53),
      );
  static get labelLargeGray90008_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
      );
  static get labelLargeInterBluegray90002 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray90002.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get labelLargeInterBluegray9000212 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 12.fSize,
      );
  static get labelLargeInterBluegray90002Bold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLightblueA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeBlack900 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeBluegray400 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeErrorContainer =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.56),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeGray700 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeGray700SemiBold =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeGray90008 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeGray9000812 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray90008.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get labelLargeManropeGray90008SemiBold =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray90008,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeGray90008_1 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
      );
  static get labelLargeManropeGray90008_2 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray90008.withOpacity(0.53),
      );
  static get labelLargeManropeLightblueA70001 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeLightblueA70001Bold =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeManropeLightblueA70001SemiBold =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeOnErrorContainer =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropeTeal600 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.teal600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratOnErrorContainer =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratOnErrorContainerSemiBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratOnErrorContainerSemiBold12 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get labelLargeOnErrorContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnErrorContainerSemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelLargePrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRedA70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA70002.withOpacity(0.67),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayGray60001 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.gray60001.withOpacity(0.56),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSFProDisplayGray90002 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayGray9000212 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.gray90002.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get labelLargeSFProDisplayTeal400 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.teal400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayTeal600 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.teal600,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProGray60001 =>
      theme.textTheme.labelLarge!.sFPro.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProLightblueA70001 =>
      theme.textTheme.labelLarge!.sFPro.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTeal400 =>
      theme.textTheme.labelLarge!.sFPro.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextBlack900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextBlack90012 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontSize: 12.fSize,
      );
  static get labelLargeSFProTextBlack90012_1 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 12.fSize,
      );
  static get labelLargeSFProTextBlack900SemiBold =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextBlack900SemiBold_1 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextBlack900SemiBold_2 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextBlack900_1 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeSFProTextBlack900_2 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get labelLargeSFProTextBlack900_3 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get labelLargeSFProTextBlack900_4 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get labelLargeSFProTextGray800 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextGray90008 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.gray90008,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextGray90008SemiBold =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.gray90008.withOpacity(0.67),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextGray90008SemiBold_1 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.gray90008.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextGreen500 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.green500,
      );
  static get labelLargeSFProTextPrimaryContainer =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextRed500 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.red500,
      );
  static get labelLargeSFProTextTeal400 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextTeal400_1 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.teal400,
      );
  static get labelLargeSFProTextTeal600 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.teal600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextTeal60012 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.teal600,
        fontSize: 12.fSize,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
      );
  static get labelLargeTeal400SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal400SemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal400SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal600,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeTeal600SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal600,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontSize: 11.fSize,
      );
  static get labelMediumDMSansGray500 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumGeneralSansVariableErrorContainer =>
      theme.textTheme.labelMedium!.generalSansVariable.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGeneralSansVariableGray90008 =>
      theme.textTheme.labelMedium!.generalSansVariable.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGeneralSansVariablePrimary =>
      theme.textTheme.labelMedium!.generalSansVariable.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumManropeBluegray400 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumManropeErrorContainer =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumManropeErrorContainer11 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get labelMediumManropePrimaryContainer =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSFProDisplay =>
      theme.textTheme.labelMedium!.sFProDisplay;
  static get labelMediumSFProDisplayBold =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSFProDisplayErrorContainer =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSFProDisplayGray90002 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumTeal400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumTeal400Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal400,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallManropeDeeporangeA400 =>
      theme.textTheme.labelSmall!.manrope.copyWith(
        color: appTheme.deepOrangeA400,
      );
  static get labelSmallManropeRedA70002 =>
      theme.textTheme.labelSmall!.manrope.copyWith(
        color: appTheme.redA70002.withOpacity(0.56),
        fontSize: 8.fSize,
      );
  // Montserrat text style
  static get montserratGray10003 => TextStyle(
        color: appTheme.gray10003,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w600,
      ).montserrat;
  static get montserratOnErrorContainer => TextStyle(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w600,
      ).montserrat;
  static get montserratOnErrorContainerRegular => TextStyle(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 3.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  static get montserratOnErrorContainerSemiBold => TextStyle(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 2.fSize,
        fontWeight: FontWeight.w600,
      ).montserrat;
  // Title text style
  static get titleLargeGeneralSansVariableGray90004 =>
      theme.textTheme.titleLarge!.generalSansVariable.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeManropeErrorContainer =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSFProDisplayBlack900 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSFProDisplayGray70001 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.gray70001,
      );
  static get titleLargeSFProDisplayGray70001_1 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.gray70001,
      );
  static get titleLargeSFProDisplayLightblueA700 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSFProDisplayLightblueA700Regular =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSFProDisplayTeal400 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.teal400,
      );
  static get titleLargeSFProDisplayTeal600 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.teal600,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumGeneralSansVariableBlack900 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get titleMediumGeneralSansVariableBlack900_1 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGeneralSansVariableBluegray20001 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.blueGray20001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGeneralSansVariableBluegray300 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleMediumGeneralSansVariableBluegray40001 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleMediumGeneralSansVariableBluegray800 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGeneralSansVariableGray50002 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.gray50002,
      );
  static get titleMediumGeneralSansVariableGray90004 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.gray90004,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGeneralSansVariableGray90006 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: appTheme.gray90006,
        fontSize: 17.fSize,
      );
  static get titleMediumGeneralSansVariableOnErrorContainer =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumGeneralSansVariableOnErrorContainer17 =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get titleMediumGeneralSansVariableOnErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGeneralSansVariablePrimaryContainer =>
      theme.textTheme.titleMedium!.generalSansVariable.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumManropeBlack900 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumManropeBlack900Bold =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumManropePrimaryContainer =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProDisplayGray90001 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProDisplayGray90002 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProDisplayGray90002SemiBold =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProDisplayGray90002SemiBold_1 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray90002.withOpacity(0.46),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextBlack900 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextBlack900Bold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProTextBlack900SemiBold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextBluegray600 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.blueGray600,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProTextGray90004 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextLightblueA700 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextLightblueA700Bold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProTextPrimary =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProTextPrimaryContainer =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSatoshiVariableErrorContainer =>
      theme.textTheme.titleMedium!.satoshiVariable.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSatoshiVariableOnPrimary =>
      theme.textTheme.titleMedium!.satoshiVariable.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSatoshiVariablePrimaryContainer =>
      theme.textTheme.titleMedium!.satoshiVariable.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSatoshiVariableTeal400 =>
      theme.textTheme.titleMedium!.satoshiVariable.copyWith(
        color: appTheme.teal400,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleSmallGeneralSansVariableBluegray400 =>
      theme.textTheme.titleSmall!.generalSansVariable.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallGeneralSansVariableOnErrorContainer =>
      theme.textTheme.titleSmall!.generalSansVariable.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallGeneralSansVariablePrimary =>
      theme.textTheme.titleSmall!.generalSansVariable.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallGeneralSansVariablePrimaryContainer =>
      theme.textTheme.titleSmall!.generalSansVariable.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallGeneralSansVariableTeal90001 =>
      theme.textTheme.titleSmall!.generalSansVariable.copyWith(
        color: appTheme.teal90001,
      );
  static get titleSmallGray90008 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90008.withOpacity(0.67),
      );
  static get titleSmallInterBluegray30003 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray30003,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallManropeBlack900 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallManropeErrorContainer =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleSmallManropeGray90008 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.gray90008.withOpacity(0.46),
      );
  static get titleSmallManropePrimaryContainer =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallMontserratGray10003 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray10003,
        fontSize: 14.fSize,
      );
  static get titleSmallMontserratOnErrorContainer =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallTeal400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get eudoxusSans {
    return copyWith(
      fontFamily: 'Eudoxus Sans',
    );
  }

  TextStyle get satoshiVariable {
    return copyWith(
      fontFamily: 'Satoshi Variable',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get generalSansVariable {
    return copyWith(
      fontFamily: 'General Sans Variable',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get avenir {
    return copyWith(
      fontFamily: 'Avenir',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
