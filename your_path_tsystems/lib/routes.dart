import 'package:flutter/material.dart';
import 'package:your_path_tsystems/screens/details/details.dart';
import 'package:your_path_tsystems/screens/home/home.dart';
import 'package:your_path_tsystems/screens/path/path.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  PathScreen.routeName: (context) => PathScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
