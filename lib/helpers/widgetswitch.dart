import 'package:flutter/material.dart';

class WidgetSwitch extends StatelessWidget {
  final Widget desktopViewWidget;
  final Widget tabViewWidget;
  final Widget mobileViewWidget;
  const WidgetSwitch(
      {Key? key,
      required this.desktopViewWidget,
      required this.tabViewWidget,
      required this.mobileViewWidget})
      : super(key: key);

  static bool isMobileView(BuildContext context) {
    return MediaQuery.of(context).size.width < 852;
  }

  static bool isDesktopView(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isTabView(BuildContext context) {
    return MediaQuery.of(context).size.width >= 852 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return desktopViewWidget;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 852) {
          return tabViewWidget;
        } else {
          return mobileViewWidget;
        }
      },
    );
  }
}
