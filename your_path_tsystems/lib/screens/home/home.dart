import 'package:flutter/material.dart';
import 'package:your_path_tsystems/shared/cosntants/text_styles.dart';

import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YourPATH: T-Systems",
          style: AppTextStyles.appBar,
        ),
        elevation: 15,
      ),
      body: HomeBody(),
    );
  }
}
