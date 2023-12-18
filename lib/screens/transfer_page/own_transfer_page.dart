import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_floating_text_field.dart';

class OwnTransfer extends StatefulWidget {
  const OwnTransfer({Key? key})
      : super(
    key: key,
  );

  @override
  _OwnTransfer createState() => _OwnTransfer();
}

class _OwnTransfer extends State<OwnTransfer>
    with AutomaticKeepAliveClientMixin<OwnTransfer> {
  TextEditingController frameController = TextEditingController();
  String money = "";
  TextEditingController _moneyInput = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (){
            setState(() {
              money = _moneyInput.text;
            });
          },
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Column(
              children: [
                SizedBox(height: 13.v),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Transfer from",
                            style: CustomTextStyles.labelLargeBlack900SemiBold_1,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildPersonalAccount(context),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Transfer to",
                            style: CustomTextStyles.labelLargeBlack900SemiBold_1,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildPersonalAccount1(context),
                        SizedBox(height: 16.v),
                        _buildFrame(context),
                        SizedBox(height: 16.v),
                        _buildMoneyInput(context),
                        SizedBox(height: 15.v),
                        _buildInputField(context),
                        Spacer(),
                        _buildContinue(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChange(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 69.h,
      text: "Change",
      margin: EdgeInsets.symmetric(vertical: 7.v),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelMediumManropeErrorContainer11,
    );
  }

  /// Section Widget
  Widget _buildPersonalAccount(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adrian’s Account (500 GBP)".toUpperCase(),
                  style: CustomTextStyles.titleSmallManropePrimaryContainer,
                ),
                SizedBox(height: 6.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "4212423532",
                    style: CustomTextStyles.labelLargeSFProDisplayGray9000212,
                  ),
                ),
              ],
            ),
          ),
          _buildChange(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "+",
      rightIcon: Padding(
        padding: EdgeInsets.fromLTRB(10.h, 11.v, 12.h, 9.v),
        child: Text(
          "Add a new account",
          style: TextStyle(
            color: Color(0XFF2B6173),
            fontSize: 11.fSize,
            fontFamily: 'General Sans Variable',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL8,
      buttonTextStyle: theme.textTheme.headlineSmall!,
    );
  }

  /// Section Widget
  Widget _buildPersonalAccount1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 98.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: _buildTf(context),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return CustomTextFormField(
      controller: frameController,
      hintText: "Add a note (optional)",
      hintStyle: CustomTextStyles.bodyMediumPrimary,
      textInputAction: TextInputAction.done,
      borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
    );
  }
  Widget _buildMoneyInput(BuildContext context) {
    return CustomFloatingTextField(
      controller: _moneyInput,
      labelText: "Type Your Money",
      labelStyle: CustomTextStyles.bodyMediumPrimary,
      hintText: "Type Your Money",
      hintStyle: CustomTextStyles.bodyMediumPrimary,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(14.h, 20.v, 14.h, 19.v),
      validator: (value) {
        if(value!.isEmpty){
          return "Fill money";
        }
        return null;
      },
    );
  }
  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return SizedBox(
      height: 98.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 96.v,
              width: 343.h,
              decoration: BoxDecoration(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "£ ",
                              style: CustomTextStyles
                                  .titleLargeGeneralSansVariableGray90004,
                            ),
                            TextSpan(
                              text: "${money}",
                              style: CustomTextStyles.displayMedium40,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      // SizedBox(
                      //   height: 55.v,
                      //   child: VerticalDivider(
                      //     width: 1.h,
                      //     thickness: 1.v,
                      //     color: appTheme.teal400,
                      //     indent: 11.h,
                      //     endIndent: 12.h,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transfer amount",
                          style: CustomTextStyles.labelLargeGray90004,
                        ),
                        Text(
                          "Balance: ${money} GBP",
                          style: CustomTextStyles.labelLargeTeal400SemiBold12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGeneralSansVariableBluegray20001,
      onPressed: () => {
        if(_formKey.currentState!.validate()){
          print("press continued on Own Transfer")
        }
      },
    );
  }
}
