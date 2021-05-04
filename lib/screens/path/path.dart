import 'package:flutter/material.dart';
import 'package:your_path_tsystems/shared/cosntants/text_styles.dart';
import 'components/path_body.dart';

class PathScreen extends StatelessWidget {
  static String routeName = '/path';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Níveis",
        ),
        elevation: 15,
      ),
      body: PathBody(),
    );
  }
}
