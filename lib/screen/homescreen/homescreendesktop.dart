import 'package:flutter/material.dart';
import 'package:inlogsweb/componnets/blogwidget.dart';
import 'package:inlogsweb/providers/appprovider.dart';
import 'package:provider/provider.dart';

class HomeScreenDesktop extends StatefulWidget {
  const HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  _HomeScreenDesktopState createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop> {
  @override
  void initState() {
    Provider.of<AppProvider>(context, listen: false).getJsonForDesktopView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      child: Scaffold(
        body: appProvider.loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 4, top: 8, bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: appProvider.blogListCol1
                                .map((blog) => BlogWidget(blog: blog))
                                .toList(),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4.0, right: 4.0, top: 8.0, bottom: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 300,
                                color: Colors.red,
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4.0, right: 8.0, top: 8.0, bottom: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 500,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
      ),
    );
  }
}
