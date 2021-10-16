import 'package:flutter/material.dart';
import 'package:flutter_chair_store_ui/product_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        ProductScreen(),
        ProductScreen(),
        ProductScreen(),
        ProductScreen(),
        ProductScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey[600],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.favorite),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey[600],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.qr_code_scanner_rounded,
            color: Colors.white,
          ),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey[600],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.shopping_cart),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey[600],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person_rounded),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.grey[600],
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: false,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
