import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AFilterPeriodMonthlyPage extends StatefulWidget {
  const AFilterPeriodMonthlyPage({Key? key})
      : super(
          key: key,
        );

  @override
  AFilterPeriodMonthlyPageState createState() =>
      AFilterPeriodMonthlyPageState();
}

class AFilterPeriodMonthlyPageState extends State<AFilterPeriodMonthlyPage>
    with AutomaticKeepAliveClientMixin<AFilterPeriodMonthlyPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      _buildCalendarMonthly(context),
                      Spacer(),
                      CustomElevatedButton(
                        text: "Done",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarMonthly(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "May 2022",
                  style: CustomTextStyles.labelLargeBluegray400_1,
                ),
              ),
              Text(
                "Reset",
                style: CustomTextStyles.labelLargeTeal400,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "<",
                  style: CustomTextStyles.headlineMediumManropeBluegray400,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "2022",
                    style: CustomTextStyles
                        .titleMediumGeneralSansVariableGray90004,
                  ),
                ),
                Text(
                  ">",
                  style: CustomTextStyles.headlineMediumManropeBluegray400,
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 33.h,
              right: 22.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Text(
                    "Jan",
                    style: CustomTextStyles.labelLargeBluegray400,
                  ),
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "Feb",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "Mar",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.9,
                  child: Text(
                    "Apr",
                    style: CustomTextStyles.labelLargeBluegray400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomElevatedButton(
                  height: 28.v,
                  width: 50.h,
                  text: "May",
                  buttonStyle: CustomButtonStyles.fillTealTL81,
                  buttonTextStyle: CustomTextStyles
                      .titleSmallGeneralSansVariableOnErrorContainer,
                ),
                Spacer(
                  flex: 25,
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "Jun",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
                Spacer(
                  flex: 37,
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "Jul",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
                Spacer(
                  flex: 37,
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      "Aug",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              right: 22.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sep",
                  style:
                      CustomTextStyles.titleSmallGeneralSansVariableBluegray400,
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "Oct",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "Nov",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "Dec",
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
