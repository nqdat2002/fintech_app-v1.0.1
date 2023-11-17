import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 44.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 44.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 52.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray10004.withOpacity(0.74),
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 58.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray50Ef,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow_1:
        return Stack(
          children: [
            Container(
              height: 54.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray50,
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
              ),
            ),
            Container(
              height: 1.v,
              width: 374.h,
              margin: EdgeInsets.only(
                left: 1.h,
                top: 48.v,
                bottom: 5.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.39),
              ),
            ),
          ],
        );
      case Style.bgFill:
        return Container(
          height: 58.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray7007f,
            borderRadius: BorderRadius.circular(
              16.h,
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgShadow,
  bgShadow_1,
  bgFill,
}
