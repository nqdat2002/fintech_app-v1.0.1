import 'package:flutter/material.dart';
import 'package:fintech_app/presentation/welcome_screen/welcome_screen.dart';
import 'package:fintech_app/presentation/a_onboarding_1_three_screen/a_onboarding_1_three_screen.dart';
import 'package:fintech_app/presentation/b_onboarding_2_three_screen/b_onboarding_2_three_screen.dart';
import 'package:fintech_app/presentation/c_onboarding_3_three_screen/c_onboarding_3_three_screen.dart';
import 'package:fintech_app/presentation/login_screen/login_screen.dart';
import 'package:fintech_app/presentation/a_email_1_two_screen/a_email_1_two_screen.dart';
import 'package:fintech_app/presentation/b_email_2_two_screen/b_email_2_two_screen.dart';
import 'package:fintech_app/presentation/confirm_your_email_screen/confirm_your_email_screen.dart';
import 'package:fintech_app/presentation/a_launcher_1_three_screen/a_launcher_1_three_screen.dart';
import 'package:fintech_app/presentation/b_launcher_2_three_screen/b_launcher_2_three_screen.dart';
import 'package:fintech_app/presentation/c_launcher_3_three_screen/c_launcher_3_three_screen.dart';
import 'package:fintech_app/presentation/welcome_to_smartbank_screen/welcome_to_smartbank_screen.dart';
import 'package:fintech_app/presentation/type_of_an_account_screen/type_of_an_account_screen.dart';
import 'package:fintech_app/presentation/select_country_screen/select_country_screen.dart';
import 'package:fintech_app/presentation/a_select_country_1_two_screen/a_select_country_1_two_screen.dart';
import 'package:fintech_app/presentation/b_select_country_2_2_screen/b_select_country_2_2_screen.dart';
import 'package:fintech_app/presentation/a_phone_number_1_two_screen/a_phone_number_1_two_screen.dart';
import 'package:fintech_app/presentation/b_phone_number_2_two_screen/b_phone_number_2_two_screen.dart';
import 'package:fintech_app/presentation/a_otp_1_three_screen/a_otp_1_three_screen.dart';
import 'package:fintech_app/presentation/b_otp_2_three_screen/b_otp_2_three_screen.dart';
import 'package:fintech_app/presentation/c_otp_3_three_screen/c_otp_3_three_screen.dart';
import 'package:fintech_app/presentation/phone_verified_screen/phone_verified_screen.dart';
import 'package:fintech_app/presentation/a_passcode_1_three_screen/a_passcode_1_three_screen.dart';
import 'package:fintech_app/presentation/c_passcode_3_three_screen/c_passcode_3_three_screen.dart';
import 'package:fintech_app/presentation/pasccode_set_up_screen/pasccode_set_up_screen.dart';
import 'package:fintech_app/presentation/a_get_started_1_two_screen/a_get_started_1_two_screen.dart';
import 'package:fintech_app/presentation/a_legal_information_1_four_screen/a_legal_information_1_four_screen.dart';
import 'package:fintech_app/presentation/b_legal_information_2_four_screen/b_legal_information_2_four_screen.dart';
import 'package:fintech_app/presentation/c_legal_information_3_four_screen/c_legal_information_3_four_screen.dart';
import 'package:fintech_app/presentation/d_legal_information_4_four_screen/d_legal_information_4_four_screen.dart';
import 'package:fintech_app/presentation/a_notifications_on_1_two_screen/a_notifications_on_1_two_screen.dart';
import 'package:fintech_app/presentation/verify_identity_splash_screen/verify_identity_splash_screen.dart';
import 'package:fintech_app/presentation/verify_identity_type_screen/verify_identity_type_screen.dart';
import 'package:fintech_app/presentation/camera_access_screen/camera_access_screen.dart';
import 'package:fintech_app/presentation/b_verify_identity_2_five_screen/b_verify_identity_2_five_screen.dart';
import 'package:fintech_app/presentation/c_verify_identity_3_five_screen/c_verify_identity_3_five_screen.dart';
import 'package:fintech_app/presentation/d_verify_identity_4_five_screen/d_verify_identity_4_five_screen.dart';
import 'package:fintech_app/presentation/e_verify_identity_5_five_screen/e_verify_identity_5_five_screen.dart';
import 'package:fintech_app/presentation/loading_screen/loading_screen.dart';
import 'package:fintech_app/presentation/take_a_selfie_screen/take_a_selfie_screen.dart';
import 'package:fintech_app/presentation/a_live_camera_preview_screen/a_live_camera_preview_screen.dart';
import 'package:fintech_app/presentation/b_uploading_screen/b_uploading_screen.dart';
import 'package:fintech_app/presentation/a_verify_identity_screen/a_verify_identity_screen.dart';
import 'package:fintech_app/presentation/b_verification_pending_screen/b_verification_pending_screen.dart';
import 'package:fintech_app/presentation/c_verification_needed_screen/c_verification_needed_screen.dart';
import 'package:fintech_app/presentation/what_would_you_like_to_do_screen/what_would_you_like_to_do_screen.dart';
import 'package:fintech_app/presentation/create_your_smartbank_card_screen/create_your_smartbank_card_screen.dart';
import 'package:fintech_app/presentation/a_order_a_card_tab_container_screen/a_order_a_card_tab_container_screen.dart';
import 'package:fintech_app/presentation/b_your_virtual_credit_card_screen/b_your_virtual_credit_card_screen.dart';
import 'package:fintech_app/presentation/c_name_your_card_screen/c_name_your_card_screen.dart';
import 'package:fintech_app/presentation/d_virtual_card_is_ready_screen/d_virtual_card_is_ready_screen.dart';
import 'package:fintech_app/presentation/top_up_account_screen/top_up_account_screen.dart';
import 'package:fintech_app/presentation/open_banking_screen/open_banking_screen.dart';
import 'package:fintech_app/presentation/account_details_screen/account_details_screen.dart';
import 'package:fintech_app/presentation/share_sheet_screen/share_sheet_screen.dart';
import 'package:fintech_app/presentation/virtual_card_is_ready_screen/virtual_card_is_ready_screen.dart';
import 'package:fintech_app/presentation/a_top_the_account_screen/a_top_the_account_screen.dart';
import 'package:fintech_app/presentation/b_debit_or_credit_card_screen/b_debit_or_credit_card_screen.dart';
import 'package:fintech_app/presentation/a_card_in_your_name_screen/a_card_in_your_name_screen.dart';
import 'package:fintech_app/presentation/b_card_in_your_name_error_screen/b_card_in_your_name_error_screen.dart';
import 'package:fintech_app/presentation/skeleton_screen/skeleton_screen.dart';
import 'package:fintech_app/presentation/a_home_screen_not_verified_screen/a_home_screen_not_verified_screen.dart';
import 'package:fintech_app/presentation/b_home_screen_no_accounts_screen/b_home_screen_no_accounts_screen.dart';
import 'package:fintech_app/presentation/c_home_screen_new_account_screen/c_home_screen_new_account_screen.dart';
import 'package:fintech_app/presentation/d_home_screen_topped_up_account_screen/d_home_screen_topped_up_account_screen.dart';
import 'package:fintech_app/presentation/e_home_screen_transaction_screen/e_home_screen_transaction_screen.dart';
import 'package:fintech_app/presentation/f_home_screen_extra_actions_screen/f_home_screen_extra_actions_screen.dart';
import 'package:fintech_app/presentation/g_home_screen_blur_navigation_screen/g_home_screen_blur_navigation_screen.dart';
import 'package:fintech_app/presentation/choose_a_balance_to_open_container_screen/choose_a_balance_to_open_container_screen.dart';
import 'package:fintech_app/presentation/a_standard_transfer_tab_container_screen/a_standard_transfer_tab_container_screen.dart';
import 'package:fintech_app/presentation/b_own_transfer_blur_screen/b_own_transfer_blur_screen.dart';
import 'package:fintech_app/presentation/review_details_screen/review_details_screen.dart';
import 'package:fintech_app/presentation/confirm_passcode_screen/confirm_passcode_screen.dart';
import 'package:fintech_app/presentation/review_details1_screen/review_details1_screen.dart';
import 'package:fintech_app/presentation/a_exchange_gbp_screen/a_exchange_gbp_screen.dart';
import 'package:fintech_app/presentation/a_profile_screen/a_profile_screen.dart';
import 'package:fintech_app/presentation/b_profile_screen/b_profile_screen.dart';
import 'package:fintech_app/presentation/personal_details_screen/personal_details_screen.dart';
import 'package:fintech_app/presentation/a_my_accounts_screen/a_my_accounts_screen.dart';
import 'package:fintech_app/presentation/b_account_details_screen/b_account_details_screen.dart';
import 'package:fintech_app/presentation/transaction_history_screen/transaction_history_screen.dart';
import 'package:fintech_app/presentation/select_language_screen/select_language_screen.dart';
import 'package:fintech_app/presentation/documents_screen/documents_screen.dart';
import 'package:fintech_app/presentation/a_existing_passcode_1_two_screen/a_existing_passcode_1_two_screen.dart';
import 'package:fintech_app/presentation/b_confirm_passcode_screen/b_confirm_passcode_screen.dart';
import 'package:fintech_app/presentation/a_upload_an_image_1_three_screen/a_upload_an_image_1_three_screen.dart';
import 'package:fintech_app/presentation/c_upload_an_image_3_three_screen/c_upload_an_image_3_three_screen.dart';
import 'package:fintech_app/presentation/a_filter_period_monthly_tab_container_screen/a_filter_period_monthly_tab_container_screen.dart';
import 'package:fintech_app/presentation/set_your_budget_screen/set_your_budget_screen.dart';
import 'package:fintech_app/presentation/a_transaction_history_screen/a_transaction_history_screen.dart';
import 'package:fintech_app/presentation/b_transactions_screen/b_transactions_screen.dart';
import 'package:fintech_app/presentation/c_single_transaction_screen/c_single_transaction_screen.dart';
import 'package:fintech_app/presentation/d_single_transaction_screen/d_single_transaction_screen.dart';
import 'package:fintech_app/presentation/support_screen/support_screen.dart';
import 'package:fintech_app/presentation/email_us_screen/email_us_screen.dart';
import 'package:fintech_app/presentation/call_us_screen/call_us_screen.dart';
import 'package:fintech_app/presentation/chat_with_us_screen/chat_with_us_screen.dart';
import 'package:fintech_app/presentation/a_transfer_money_screen/a_transfer_money_screen.dart';
import 'package:fintech_app/presentation/b_transfer_money_screen/b_transfer_money_screen.dart';
import 'package:fintech_app/presentation/c_add_a_recipient_screen/c_add_a_recipient_screen.dart';
import 'package:fintech_app/presentation/privacy_screen/privacy_screen.dart';
import 'package:fintech_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:fintech_app/presentation/messages_empty_screen/messages_empty_screen.dart';
import 'package:fintech_app/presentation/messages_screen/messages_screen.dart';
import 'package:fintech_app/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:fintech_app/presentation/help_support_screen/help_support_screen.dart';
import 'package:fintech_app/presentation/cards_tab_container_screen/cards_tab_container_screen.dart';
import 'package:fintech_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String aOnboarding1ThreeScreen = '/a_onboarding_1_three_screen';

  static const String bOnboarding2ThreeScreen = '/b_onboarding_2_three_screen';

  static const String cOnboarding3ThreeScreen = '/c_onboarding_3_three_screen';

  static const String loginScreen = '/login_screen';

  static const String aEmail1TwoScreen = '/a_email_1_two_screen';

  static const String bEmail2TwoScreen = '/b_email_2_two_screen';

  static const String confirmYourEmailScreen = '/confirm_your_email_screen';

  static const String aLauncher1ThreeScreen = '/a_launcher_1_three_screen';

  static const String bLauncher2ThreeScreen = '/b_launcher_2_three_screen';

  static const String cLauncher3ThreeScreen = '/c_launcher_3_three_screen';

  static const String welcomeToSmartbankScreen = '/welcome_to_smartbank_screen';

  static const String typeOfAnAccountScreen = '/type_of_an_account_screen';

  static const String selectCountryScreen = '/select_country_screen';

  static const String aSelectCountry1TwoScreen =
      '/a_select_country_1_two_screen';

  static const String bSelectCountry22Screen = '/b_select_country_2_2_screen';

  static const String aPhoneNumber1TwoScreen = '/a_phone_number_1_two_screen';

  static const String bPhoneNumber2TwoScreen = '/b_phone_number_2_two_screen';

  static const String aOtp1ThreeScreen = '/a_otp_1_three_screen';

  static const String bOtp2ThreeScreen = '/b_otp_2_three_screen';

  static const String cOtp3ThreeScreen = '/c_otp_3_three_screen';

  static const String phoneVerifiedScreen = '/phone_verified_screen';

  static const String aPasscode1ThreeScreen = '/a_passcode_1_three_screen';

  static const String cPasscode3ThreeScreen = '/c_passcode_3_three_screen';

  static const String pasccodeSetUpScreen = '/pasccode_set_up_screen';

  static const String aGetStarted1TwoScreen = '/a_get_started_1_two_screen';

  static const String aLegalInformation1FourScreen =
      '/a_legal_information_1_four_screen';

  static const String bLegalInformation2FourScreen =
      '/b_legal_information_2_four_screen';

  static const String cLegalInformation3FourScreen =
      '/c_legal_information_3_four_screen';

  static const String dLegalInformation4FourScreen =
      '/d_legal_information_4_four_screen';

  static const String aNotificationsOn1TwoScreen =
      '/a_notifications_on_1_two_screen';

  static const String verifyIdentitySplashScreen =
      '/verify_identity_splash_screen';

  static const String verifyIdentityTypeScreen = '/verify_identity_type_screen';

  static const String cameraAccessScreen = '/camera_access_screen';

  static const String bVerifyIdentity2FiveScreen =
      '/b_verify_identity_2_five_screen';

  static const String cVerifyIdentity3FiveScreen =
      '/c_verify_identity_3_five_screen';

  static const String dVerifyIdentity4FiveScreen =
      '/d_verify_identity_4_five_screen';

  static const String eVerifyIdentity5FiveScreen =
      '/e_verify_identity_5_five_screen';

  static const String loadingScreen = '/loading_screen';

  static const String takeASelfieScreen = '/take_a_selfie_screen';

  static const String aLiveCameraPreviewScreen =
      '/a_live_camera_preview_screen';

  static const String bUploadingScreen = '/b_uploading_screen';

  static const String aVerifyIdentityScreen = '/a_verify_identity_screen';

  static const String bVerificationPendingScreen =
      '/b_verification_pending_screen';

  static const String cVerificationNeededScreen =
      '/c_verification_needed_screen';

  static const String whatWouldYouLikeToDoScreen =
      '/what_would_you_like_to_do_screen';

  static const String createYourSmartbankCardScreen =
      '/create_your_smartbank_card_screen';

  static const String aOrderACardPage = '/a_order_a_card_page';

  static const String aOrderACardTabContainerScreen =
      '/a_order_a_card_tab_container_screen';

  static const String bYourVirtualCreditCardScreen =
      '/b_your_virtual_credit_card_screen';

  static const String cNameYourCardScreen = '/c_name_your_card_screen';

  static const String dVirtualCardIsReadyScreen =
      '/d_virtual_card_is_ready_screen';

  static const String topUpAccountScreen = '/top_up_account_screen';

  static const String openBankingScreen = '/open_banking_screen';

  static const String accountDetailsScreen = '/account_details_screen';

  static const String shareSheetScreen = '/share_sheet_screen';

  static const String virtualCardIsReadyScreen =
      '/virtual_card_is_ready_screen';

  static const String aTopTheAccountScreen = '/a_top_the_account_screen';

  static const String bDebitOrCreditCardScreen =
      '/b_debit_or_credit_card_screen';

  static const String aCardInYourNameScreen = '/a_card_in_your_name_screen';

  static const String bCardInYourNameErrorScreen =
      '/b_card_in_your_name_error_screen';

  static const String skeletonScreen = '/skeleton_screen';

  static const String aHomeScreenNotVerifiedScreen =
      '/a_home_screen_not_verified_screen';

  static const String bHomeScreenNoAccountsScreen =
      '/b_home_screen_no_accounts_screen';

  static const String cHomeScreenNewAccountScreen =
      '/c_home_screen_new_account_screen';

  static const String dHomeScreenToppedUpAccountScreen =
      '/d_home_screen_topped_up_account_screen';

  static const String eHomeScreenTransactionScreen =
      '/e_home_screen_transaction_screen';

  static const String fHomeScreenExtraActionsScreen =
      '/f_home_screen_extra_actions_screen';

  static const String gHomeScreenBlurNavigationScreen =
      '/g_home_screen_blur_navigation_screen';

  static const String chooseABalanceToOpenPage =
      '/choose_a_balance_to_open_page';

  static const String chooseABalanceToOpenContainerScreen =
      '/choose_a_balance_to_open_container_screen';

  static const String aStandardTransferPage = '/a_standard_transfer_page';

  static const String aStandardTransferTabContainerScreen =
      '/a_standard_transfer_tab_container_screen';

  static const String bStandardTransferPage = '/b_standard_transfer_page';

  static const String aOwnTransferPage = '/a_own_transfer_page';

  static const String bOwnTransferBlurScreen = '/b_own_transfer_blur_screen';

  static const String reviewDetailsScreen = '/review_details_screen';

  static const String confirmPasscodeScreen = '/confirm_passcode_screen';

  static const String reviewDetails1Screen = '/review_details1_screen';

  static const String aExchangeGbpScreen = '/a_exchange_gbp_screen';

  static const String aProfileScreen = '/a_profile_screen';

  static const String bProfileScreen = '/b_profile_screen';

  static const String personalDetailsScreen = '/personal_details_screen';

  static const String aMyAccountsScreen = '/a_my_accounts_screen';

  static const String bAccountDetailsScreen = '/b_account_details_screen';

  static const String transactionHistoryScreen = '/transaction_history_screen';

  static const String selectLanguageScreen = '/select_language_screen';

  static const String documentsScreen = '/documents_screen';

  static const String aExistingPasscode1TwoScreen =
      '/a_existing_passcode_1_two_screen';

  static const String bConfirmPasscodeScreen = '/b_confirm_passcode_screen';

  static const String aUploadAnImage1ThreeScreen =
      '/a_upload_an_image_1_three_screen';

  static const String cUploadAnImage3ThreeScreen =
      '/c_upload_an_image_3_three_screen';

  static const String aInsightsIncomePage = '/a_insights_income_page';

  static const String aInsightsIncomeTabContainerPage =
      '/a_insights_income_tab_container_page';

  static const String bInsightsExpensesPage = '/b_insights_expenses_page';

  static const String aFilterPeriodMonthlyPage =
      '/a_filter_period_monthly_page';

  static const String aFilterPeriodMonthlyTabContainerScreen =
      '/a_filter_period_monthly_tab_container_screen';

  static const String bFilterPeriodWeeklyPage = '/b_filter_period_weekly_page';

  static const String setYourBudgetScreen = '/set_your_budget_screen';

  static const String aTransactionHistoryScreen =
      '/a_transaction_history_screen';

  static const String bTransactionsScreen = '/b_transactions_screen';

  static const String cSingleTransactionScreen = '/c_single_transaction_screen';

  static const String dSingleTransactionScreen = '/d_single_transaction_screen';

  static const String supportScreen = '/support_screen';

  static const String emailUsScreen = '/email_us_screen';

  static const String callUsScreen = '/call_us_screen';

  static const String chatWithUsScreen = '/chat_with_us_screen';

  static const String aTransferMoneyScreen = '/a_transfer_money_screen';

  static const String bTransferMoneyScreen = '/b_transfer_money_screen';

  static const String cAddARecipientScreen = '/c_add_a_recipient_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String messagesEmptyScreen = '/messages_empty_screen';

  static const String messagesScreen = '/messages_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String helpSupportScreen = '/help_support_screen';

  static const String cardsPage = '/cards_page';

  static const String cardsTabContainerScreen = '/cards_tab_container_screen';

  static const String inviteFriendsPage = '/invite_friends_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    aOnboarding1ThreeScreen: (context) => AOnboarding1ThreeScreen(),
    bOnboarding2ThreeScreen: (context) => BOnboarding2ThreeScreen(),
    cOnboarding3ThreeScreen: (context) => COnboarding3ThreeScreen(),
    loginScreen: (context) => LoginScreen(),
    aEmail1TwoScreen: (context) => AEmail1TwoScreen(),
    bEmail2TwoScreen: (context) => BEmail2TwoScreen(),
    confirmYourEmailScreen: (context) => ConfirmYourEmailScreen(),
    aLauncher1ThreeScreen: (context) => ALauncher1ThreeScreen(),
    bLauncher2ThreeScreen: (context) => BLauncher2ThreeScreen(),
    cLauncher3ThreeScreen: (context) => CLauncher3ThreeScreen(),
    welcomeToSmartbankScreen: (context) => WelcomeToSmartbankScreen(),
    typeOfAnAccountScreen: (context) => TypeOfAnAccountScreen(),
    selectCountryScreen: (context) => SelectCountryScreen(),
    aSelectCountry1TwoScreen: (context) => ASelectCountry1TwoScreen(),
    bSelectCountry22Screen: (context) => BSelectCountry22Screen(),
    aPhoneNumber1TwoScreen: (context) => APhoneNumber1TwoScreen(),
    bPhoneNumber2TwoScreen: (context) => BPhoneNumber2TwoScreen(),
    aOtp1ThreeScreen: (context) => AOtp1ThreeScreen(),
    bOtp2ThreeScreen: (context) => BOtp2ThreeScreen(),
    cOtp3ThreeScreen: (context) => COtp3ThreeScreen(),
    phoneVerifiedScreen: (context) => PhoneVerifiedScreen(),
    aPasscode1ThreeScreen: (context) => APasscode1ThreeScreen(),
    cPasscode3ThreeScreen: (context) => CPasscode3ThreeScreen(),
    pasccodeSetUpScreen: (context) => PasccodeSetUpScreen(),
    aGetStarted1TwoScreen: (context) => AGetStarted1TwoScreen(),
    aLegalInformation1FourScreen: (context) => ALegalInformation1FourScreen(),
    bLegalInformation2FourScreen: (context) => BLegalInformation2FourScreen(),
    cLegalInformation3FourScreen: (context) => CLegalInformation3FourScreen(),
    dLegalInformation4FourScreen: (context) => DLegalInformation4FourScreen(),
    aNotificationsOn1TwoScreen: (context) => ANotificationsOn1TwoScreen(),
    verifyIdentitySplashScreen: (context) => VerifyIdentitySplashScreen(),
    verifyIdentityTypeScreen: (context) => VerifyIdentityTypeScreen(),
    cameraAccessScreen: (context) => CameraAccessScreen(),
    bVerifyIdentity2FiveScreen: (context) => BVerifyIdentity2FiveScreen(),
    cVerifyIdentity3FiveScreen: (context) => CVerifyIdentity3FiveScreen(),
    dVerifyIdentity4FiveScreen: (context) => DVerifyIdentity4FiveScreen(),
    eVerifyIdentity5FiveScreen: (context) => EVerifyIdentity5FiveScreen(),
    loadingScreen: (context) => LoadingScreen(),
    takeASelfieScreen: (context) => TakeASelfieScreen(),
    aLiveCameraPreviewScreen: (context) => ALiveCameraPreviewScreen(),
    bUploadingScreen: (context) => BUploadingScreen(),
    aVerifyIdentityScreen: (context) => AVerifyIdentityScreen(),
    bVerificationPendingScreen: (context) => BVerificationPendingScreen(),
    cVerificationNeededScreen: (context) => CVerificationNeededScreen(),
    whatWouldYouLikeToDoScreen: (context) => WhatWouldYouLikeToDoScreen(),
    createYourSmartbankCardScreen: (context) => CreateYourSmartbankCardScreen(),
    aOrderACardTabContainerScreen: (context) => AOrderACardTabContainerScreen(),
    bYourVirtualCreditCardScreen: (context) => BYourVirtualCreditCardScreen(),
    cNameYourCardScreen: (context) => CNameYourCardScreen(),
    dVirtualCardIsReadyScreen: (context) => DVirtualCardIsReadyScreen(),
    topUpAccountScreen: (context) => TopUpAccountScreen(),
    openBankingScreen: (context) => OpenBankingScreen(),
    accountDetailsScreen: (context) => AccountDetailsScreen(),
    shareSheetScreen: (context) => ShareSheetScreen(),
    virtualCardIsReadyScreen: (context) => VirtualCardIsReadyScreen(),
    aTopTheAccountScreen: (context) => ATopTheAccountScreen(),
    bDebitOrCreditCardScreen: (context) => BDebitOrCreditCardScreen(),
    aCardInYourNameScreen: (context) => ACardInYourNameScreen(),
    bCardInYourNameErrorScreen: (context) => BCardInYourNameErrorScreen(),
    skeletonScreen: (context) => SkeletonScreen(),
    aHomeScreenNotVerifiedScreen: (context) => AHomeScreenNotVerifiedScreen(),
    bHomeScreenNoAccountsScreen: (context) => BHomeScreenNoAccountsScreen(),
    cHomeScreenNewAccountScreen: (context) => CHomeScreenNewAccountScreen(),
    dHomeScreenToppedUpAccountScreen: (context) =>
        DHomeScreenToppedUpAccountScreen(),
    eHomeScreenTransactionScreen: (context) => EHomeScreenTransactionScreen(),
    fHomeScreenExtraActionsScreen: (context) => FHomeScreenExtraActionsScreen(),
    gHomeScreenBlurNavigationScreen: (context) =>
        GHomeScreenBlurNavigationScreen(),
    chooseABalanceToOpenContainerScreen: (context) =>
        ChooseABalanceToOpenContainerScreen(),
    aStandardTransferTabContainerScreen: (context) =>
        AStandardTransferTabContainerScreen(),
    bOwnTransferBlurScreen: (context) => BOwnTransferBlurScreen(),
    reviewDetailsScreen: (context) => ReviewDetailsScreen(),
    confirmPasscodeScreen: (context) => ConfirmPasscodeScreen(),
    reviewDetails1Screen: (context) => ReviewDetails1Screen(),
    aExchangeGbpScreen: (context) => AExchangeGbpScreen(),
    aProfileScreen: (context) => AProfileScreen(),
    bProfileScreen: (context) => BProfileScreen(),
    personalDetailsScreen: (context) => PersonalDetailsScreen(),
    aMyAccountsScreen: (context) => AMyAccountsScreen(),
    bAccountDetailsScreen: (context) => BAccountDetailsScreen(),
    transactionHistoryScreen: (context) => TransactionHistoryScreen(),
    selectLanguageScreen: (context) => SelectLanguageScreen(),
    documentsScreen: (context) => DocumentsScreen(),
    aExistingPasscode1TwoScreen: (context) => AExistingPasscode1TwoScreen(),
    bConfirmPasscodeScreen: (context) => BConfirmPasscodeScreen(),
    aUploadAnImage1ThreeScreen: (context) => AUploadAnImage1ThreeScreen(),
    cUploadAnImage3ThreeScreen: (context) => CUploadAnImage3ThreeScreen(),
    aFilterPeriodMonthlyTabContainerScreen: (context) =>
        AFilterPeriodMonthlyTabContainerScreen(),
    setYourBudgetScreen: (context) => SetYourBudgetScreen(),
    aTransactionHistoryScreen: (context) => ATransactionHistoryScreen(),
    bTransactionsScreen: (context) => BTransactionsScreen(),
    cSingleTransactionScreen: (context) => CSingleTransactionScreen(),
    dSingleTransactionScreen: (context) => DSingleTransactionScreen(),
    supportScreen: (context) => SupportScreen(),
    emailUsScreen: (context) => EmailUsScreen(),
    callUsScreen: (context) => CallUsScreen(),
    chatWithUsScreen: (context) => ChatWithUsScreen(),
    aTransferMoneyScreen: (context) => ATransferMoneyScreen(),
    bTransferMoneyScreen: (context) => BTransferMoneyScreen(),
    cAddARecipientScreen: (context) => CAddARecipientScreen(),
    privacyScreen: (context) => PrivacyScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    messagesEmptyScreen: (context) => MessagesEmptyScreen(),
    messagesScreen: (context) => MessagesScreen(),
    termsAndConditionsScreen: (context) => TermsAndConditionsScreen(),
    helpSupportScreen: (context) => HelpSupportScreen(),
    cardsTabContainerScreen: (context) => CardsTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
