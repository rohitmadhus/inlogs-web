import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inlogsweb/models/blog.dart';
import 'package:flutter/services.dart' show rootBundle;

class AppProvider with ChangeNotifier {
  List<Blog> blogListCol1 = [];
  List<Blog> blogListCol2 = [];
  List<Blog> blogListCol3 = [];
  bool loading = false;
  AppProvider.initialize() {
    //getJson();
  }

  getJsonForDesktopView() async {
    loading = true;
    //notifyListeners();
    var blogData = json.decode(await rootBundle.loadString('json/data.json'))
        as Map<String, dynamic>;
    blogListCol1.clear();
    blogListCol2.clear();
    blogListCol3.clear();
    var colIndex = 1;
    for (var blog in blogData["data"]) {
      switch (colIndex) {
        case 1:
          blogListCol1.add(Blog.fromJSON(blog));
          colIndex = 2;
          break;
        case 2:
          blogListCol2.add(Blog.fromJSON(blog));
          colIndex = 3;
          break;
        case 3:
          blogListCol3.add(Blog.fromJSON(blog));
          colIndex = 1;
          break;
        default:
          colIndex = 1;
          break;
      }
    }
    print("${blogListCol1.length}" + " - column 1");
    print("${blogListCol2.length}" + " - column 2");
    print("${blogListCol3.length}" + " - column 3");
    loading = false;
    notifyListeners();
  }

  getJsonForMobileLandScapeView() async {
    loading = true;
    //notifyListeners();
    var blogData = json.decode(await rootBundle.loadString('json/data.json'))
        as Map<String, dynamic>;
    blogListCol1.clear();
    blogListCol2.clear();
    blogListCol3.clear();
    var colIndex = 1;
    for (var blog in blogData["data"]) {
      switch (colIndex) {
        case 1:
          blogListCol1.add(Blog.fromJSON(blog));
          colIndex = 2;
          break;
        case 2:
          blogListCol2.add(Blog.fromJSON(blog));
          colIndex = 1;
          break;
        default:
          colIndex = 1;
          break;
      }
    }
    print("${blogListCol1.length}" + " - column 1");
    print("${blogListCol2.length}" + " - column 2");
    print("${blogListCol3.length}" + " - column 3");
    loading = false;
    notifyListeners();
  }

  getJsonForMobilePortraitView() async {
    loading = true;
    //notifyListeners();
    var blogData = json.decode(await rootBundle.loadString('json/data.json'))
        as Map<String, dynamic>;
    blogListCol1.clear();
    blogListCol2.clear();
    blogListCol3.clear();
    for (var blog in blogData["data"]) {
      blogListCol1.add(Blog.fromJSON(blog));
    }
    print("${blogListCol1.length}" + " - column 1");
    print("${blogListCol2.length}" + " - column 2");
    print("${blogListCol3.length}" + " - column 3");
    loading = false;
    notifyListeners();
  }
}
