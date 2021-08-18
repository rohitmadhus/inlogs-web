import 'package:flutter/material.dart';
import 'package:inlogsweb/providers/appprovider.dart';
import 'package:inlogsweb/screen/homescreen/homescreendesktop.dart';
import 'package:inlogsweb/screen/homescreen/homescreenmobile.dart';
import 'package:provider/provider.dart';

import 'helpers/widgetswitch.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppProvider.initialize()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetSwitch(
        desktopViewWidget: HomeScreenDesktop(),
        mobileViewWidget: HomeScreenMobile(),
        tabViewWidget: HomeScreenDesktop(),
      ),
    );
  }
}
