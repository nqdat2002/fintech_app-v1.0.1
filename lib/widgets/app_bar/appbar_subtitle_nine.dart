import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSubtitleNine extends StatelessWidget {
  AppbarSubtitleNine({
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
        child: Opacity(
          opacity: 0.8,
          child: SizedBox(
            width: 31.h,
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeOnErrorContainer.copyWith(
                color: theme.colorScheme.onErrorContainer,
                height: 1.38,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
