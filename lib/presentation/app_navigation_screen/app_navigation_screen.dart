import 'package:fintech_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.1. - Welcome Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.2a - Onboarding 1-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aOnboarding1ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.2b - Onboarding 2-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bOnboarding2ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1.2c - Onboarding 3/Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cOnboarding3ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.1 - Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.2a - Email 1-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aEmail1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.2b - Email 2-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bEmail2TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.3 - Confirm your email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmYourEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.4a - Launcher 1-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aLauncher1ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.4b - Launcher 2-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bLauncher2ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2.4c - Launcher 3-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cLauncher3ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.1 - Welcome to SmartBank",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeToSmartbankScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.2 - Type of an account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfAnAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.3 - Select Country",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectCountryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.4a - Select Country 1-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aSelectCountry1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.4b - Select Country 2-2 ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bSelectCountry22Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.5a - Phone Number 1-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aPhoneNumber1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.5b - Phone Number 2-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bPhoneNumber2TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.6a - OTP 1-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aOtp1ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.6b - OTP 2-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bOtp2ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.6c - OTP 3-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cOtp3ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.7 - Phone verified",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneVerifiedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.8a - Passcode 1-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aPasscode1ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.8c - Passcode 3-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cPasscode3ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3.9 - Pasccode set up",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pasccodeSetUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.4.1a - Get started 1-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aGetStarted1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.4.2a - Legal information 1-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aLegalInformation1FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.4.2b -Legal information 2-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bLegalInformation2FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.4.2c -Legal information 3-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cLegalInformation3FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.4.2d -Legal information 4-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dLegalInformation4FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.5.1a - Notifications on 1-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aNotificationsOn1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.1 - Verify Identity - Splash",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyIdentitySplashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.2 - Verify identity type",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyIdentityTypeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.3 - Camera access",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cameraAccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.4b - Verify Identity 2-Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bVerifyIdentity2FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.4c - Verify Identity 3-Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cVerifyIdentity3FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.4d - Verify Identity 4-Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dVerifyIdentity4FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.4e - Verify Identity 5-Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eVerifyIdentity5FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.5 - Loading screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loadingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.6 - Take a selfie",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.takeASelfieScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.7a - Live camera preview",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aLiveCameraPreviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.7b - Uploading screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bUploadingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.8a - Verify Identity",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aVerifyIdentityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.8b - Verification pending",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bVerificationPendingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.6.8c - Verification needed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cVerificationNeededScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.1 - What would you like to do?",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatWouldYouLikeToDoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.2 - Create your SmartBank card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createYourSmartbankCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.3a - Order a card - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aOrderACardTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.3b -Your virtual credit card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bYourVirtualCreditCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.3c -Name your card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cNameYourCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.3d -Virtual card is ready",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dVirtualCardIsReadyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.4 - Top up account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topUpAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.8.1 - Open banking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.openBankingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.8.2 - Account details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.8.3 - Share Sheet",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shareSheetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.5 -Virtual card is ready",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.virtualCardIsReadyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.6a - Top the account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aTopTheAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.6b - Debit or credit card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bDebitOrCreditCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.7a - Card in your name",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aCardInYourNameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.7.7b - Card in your name - error",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bCardInYourNameErrorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.0 - Skeleton",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.skeletonScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.1a - Home screen - not verified",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aHomeScreenNotVerifiedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.1b - Home screen - no accounts",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bHomeScreenNoAccountsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.1c - Home screen - new account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cHomeScreenNewAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "1.9.1d- Home screen - topped up account",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.dHomeScreenToppedUpAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.1e - Home screen + Transaction",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eHomeScreenTransactionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.1f - Home screen - extra actions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fHomeScreenExtraActionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.9.1g - Home screen - blur navigation",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.gHomeScreenBlurNavigationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "1.9.2 - Choose a balance to open - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.chooseABalanceToOpenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "1.10.1.1a - Standard transfer - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.aStandardTransferTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.10.1.2b - Own transfer + Blur",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bOwnTransferBlurScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.10.3 - Review details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.10.4 - Confirm passcode",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmPasscodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.10.5 - Review details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewDetails1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.11.1a - Exchange GBP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aExchangeGbpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.1a - Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.1b - Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.2 - Personal details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.3a - My accounts",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aMyAccountsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.3b - Account details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bAccountDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.4 - Transaction History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transactionHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.5 - Select language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectLanguageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.6 - Documents",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.documentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.7a - Existing passcode 1-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aExistingPasscode1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.12.1.7b - Confirm passcode",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bConfirmPasscodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.13.1a- Upload an image 1-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aUploadAnImage1ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.13.1c - Upload an image 3-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cUploadAnImage3ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "2.1.2a - Filter period - monthly - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.aFilterPeriodMonthlyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.1.3 - Set your budget",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setYourBudgetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.2.1a - Transaction History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aTransactionHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.2.1b - Transactions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bTransactionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.2.1c - Single transaction",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cSingleTransactionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.2.1d - Single transaction",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dSingleTransactionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.3.1 - Support Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.supportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.3.2 - Email us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emailUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.3.3 - Call us",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.callUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.3.4 - Chat with us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatWithUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.4.1a - Transfer money",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aTransferMoneyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.4.1b - Transfer money",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bTransferMoneyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.4.1c - Add a recipient",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cAddARecipientScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5.1 - Privacy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5.2 - Privacy Policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5.3 - Messages empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5.4 - Messages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5.5 - Terms and conditions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.termsAndConditionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5.6 - Help & Support",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpSupportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.6.1 - Cards - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cardsTabContainerScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
