import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:fintech_app/widgets/custom_floating_text_field.dart';
import 'package:fintech_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../presentation/review_details_screen/review_details_screen.dart';

class StandardTransfer extends StatefulWidget {
  const StandardTransfer({Key? key}) : super(key: key,);
  @override
  _StandardTransfer createState() => _StandardTransfer();
}

class _StandardTransfer extends State<StandardTransfer> with AutomaticKeepAliveClientMixin<StandardTransfer> {
  TextEditingController recipientFill = TextEditingController();
  TextEditingController recipientAccountNumberFill = TextEditingController();
  TextEditingController noteFill = TextEditingController();

  String _money = "0";
  String _recipient = "";
  String _recipientAccountNumber = "";
  String _note = "";
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
              if (_money.isEmpty) _money = "0";
              else _money = _moneyInput.text;
              _recipient = recipientFill.text;
              _recipientAccountNumber = recipientAccountNumberFill.text;
              _note = noteFill.text;
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
                        _buildPersonalAccount(context),
                        SizedBox(height: 14.v),
                        _buildRecipients(context),
                        SizedBox(height: 16.v),
                        _buildFullLegalName1(context),
                        SizedBox(height: 16.v),
                        _buildFullLegalName2(context),
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
  Widget _buildFullLegalName(BuildContext context) {
    return Expanded(
      child: CustomFloatingTextField(
        controller:recipientFill,
        labelText: "Recipient",
        labelStyle: CustomTextStyles.labelLargeSFProTextBlack900SemiBold_1,
        hintText: "Recipient",
        borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayTL12,
        validator: (value) {
          if(value!.isEmpty){
            return "Fill Recipient";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipients(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFullLegalName(context),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(17.h),
            decoration: IconButtonStyleHelper.fillTeal,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup162746,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFullLegalName1(BuildContext context) {
    return CustomFloatingTextField(
      controller: recipientAccountNumberFill,
      labelText: "Recipient’s account number",
      labelStyle: CustomTextStyles.labelLargeGray90004,
      hintText: "Recipient’s account number",
      hintStyle: CustomTextStyles.labelLargeGray90004,
      textInputType: TextInputType.number,
      validator: (value) {
        if(value!.isEmpty){
          return "Fill Recipient's account number";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildFullLegalName2(BuildContext context) {
    return CustomFloatingTextField(
      controller: noteFill,
      labelText: "Add a note (optional)",
      labelStyle: CustomTextStyles.bodyMediumPrimary,
      hintText: "Add a note (optional)",
      hintStyle: CustomTextStyles.bodyMediumPrimary,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(14.h, 20.v, 14.h, 19.v),
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
        if (int.parse(value) == 0){
          return "Money must be atleast £5";
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
                              text: "${_money}",
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
                          "Balance: ${_money} GBP",
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
      onPressed: () {
        if(_formKey.currentState!.validate()){
          print("press continued on Transfer");
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (context) => ReviewDetailsScreen()
              )
          );
        }
      },
    );
  }
}
