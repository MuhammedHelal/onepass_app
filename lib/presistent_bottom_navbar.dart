import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onepass/core/utils/colors.dart';
import 'package:onepass/features/home/ui/views/home_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class AppPresistentBottomNavBar extends StatefulWidget {
  const AppPresistentBottomNavBar({super.key});

  @override
  State<AppPresistentBottomNavBar> createState() =>
      _AppPresistentBottomNavBarState();
}

class _AppPresistentBottomNavBarState extends State<AppPresistentBottomNavBar> {
  late final PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      margin: EdgeInsets.only(
        left: 43,
        right: 43,
        bottom: 33,
      ),
      backgroundColor: AppColors.lightGrey,
      padding: const EdgeInsets.only(top: 8),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style15,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(),
      Container(
        color: Colors.red,
        child: SizedBox.expand(),
      ),
      Scaffold(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.lighterBlack,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.lighterBlack,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.lighterBlack,
      ),
    ];
  }
}
