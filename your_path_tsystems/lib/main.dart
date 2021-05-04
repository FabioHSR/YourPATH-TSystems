import 'package:flutter/material.dart';
import 'package:your_path_tsystems/routes.dart';
import 'package:your_path_tsystems/shared/cosntants/colors.dart';

import 'screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YourPATH T-Systems',
      theme: ThemeData(
        primarySwatch: AppColors.primaryColor,
      ),
      // home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
