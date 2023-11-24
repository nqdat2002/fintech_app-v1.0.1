import 'dart:async';
import 'package:fintech_app/presentation/a_standard_transfer_tab_container_screen/a_standard_transfer_tab_container_screen.dart';
import 'package:fintech_app/screens/card_screen.dart';
import 'package:fintech_app/screens/home_screen/home_screen.dart';
import 'package:fintech_app/screens/insights_screen.dart';
import 'package:fintech_app/screens/launcher_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/screens/transfer_screen.dart';
import 'package:fintech_app/widgets/app_bar/appbar_subtitle_fourteen.dart';
import 'package:fintech_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fintech_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fintech_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fintech_app/presentation/invite_friends_page/invite_friends_page.dart';
import 'package:fintech_app/presentation/a_insights_income_tab_container_page/a_insights_income_tab_container_page.dart';

class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  _ViewScreen createState() => _ViewScreen();
}

class _ViewScreen extends State<ViewScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: _buildBottomBar(context),
          // CustomBottomBar(
          //   onChanged: (BottomBarEnum type) {
          //     Navigator.pushNamed(
          //         navigatorKey.currentContext!, getCurrentRoute(type)
          //     );
          //   },
          // ),
          body: <Widget>[
            HomeScreen(),
            CardScreen(),
            TransferScreen(),
            InsightScreen(),
            InviteFriendsPage(),
          ][currentPageIndex],
        )
    );
  }
  int currentPageIndex = 0;
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHomeTeal900,
      activeIcon: ImageConstant.imgNavHomeTeal900,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCards,
      activeIcon: ImageConstant.imgNavCards,
      title: "Cards",
      type: BottomBarEnum.Cards,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPrcUp2,
      activeIcon: ImageConstant.imgPrcUp2,
      title: "Home",
      type: BottomBarEnum.Home,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavInsights,
      activeIcon: ImageConstant.imgNavInsights,
      title: "Insights",
      type: BottomBarEnum.Insights,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "Invite",
      type: BottomBarEnum.Invite,
    )
  ];
  Widget _buildBottomBar(context){
    return Container(
      height: 97.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray3000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -12,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: currentPageIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: Container(
                decoration: AppDecoration.gradientCyanToTeal.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder23,
                ),
                child: CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 19.v,
                  width: 23.h,
                  color: appTheme.blueGray30001,
                  margin: EdgeInsets.only(
                    top: 15.v,
                    bottom: 14.v,
                  ),
                ),
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 18.v,
                  width: 20.h,
                  color: appTheme.blueGray30001,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelMediumSFProDisplay.copyWith(
                      color: appTheme.gray60001,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 20.v,
                  width: 19.h,
                  color: appTheme.teal900,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelMediumSFProDisplayGray90002
                        .copyWith(
                      color: appTheme.gray90002,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
            // widget.onChanged?.call(bottomMenuList[index].type);
            print(currentPageIndex);
          });
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Cards,
  Insights,
  Invite,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//   Widget _buildBottomBar(BuildContext context){
//     return NavigationBar(
//       onDestinationSelected: (int index) {
//         setState(() {
//           currentPageIndex = index;
//         });
//       },
//       indicatorColor: Colors.amber,
//       selectedIndex: currentPageIndex,
//       destinations: const <Widget>[
//         NavigationDestination(
//           selectedIcon: Icon(Icons.home),
//           icon: Icon(Icons.home_outlined),
//           label: 'Home',
//         ),
//         NavigationDestination(
//           icon: Badge(child: Icon(Icons.notifications_sharp)),
//           label: 'Notifications',
//         ),
//         NavigationDestination(
//           icon: Badge(
//             label: Text('2'),
//             child: Icon(Icons.messenger_sharp),
//           ),
//           label: 'Messages',
//         ),
//       ],
//     );
//   }
//
//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Home:
//         return AppRoutes.chooseABalanceToOpenPage;
//       case BottomBarEnum.Cards:
//         return AppRoutes.cardsTabContainerScreen;
//       case BottomBarEnum.Insights:
//         return AppRoutes.aInsightsIncomeTabContainerPage;
//       case BottomBarEnum.Invite:
//         return AppRoutes.inviteFriendsPage;
//       default:
//         return "/";
//     }
//   }
//
//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.chooseABalanceToOpenPage:
//         return ChooseABalanceToOpenPage();
//       case AppRoutes.cardsTabContainerScreen:
//         return CardsTabContainerScreen();
//       case AppRoutes.aInsightsIncomeTabContainerPage:
//         return AInsightsIncomeTabContainerPage();
//       case AppRoutes.inviteFriendsPage:
//         return InviteFriendsPage();
//       default:
//         return DefaultWidget();
//     }
//   }
// }