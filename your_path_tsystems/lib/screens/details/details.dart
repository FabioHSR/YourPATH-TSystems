import 'package:flutter/material.dart';

import 'components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  String nivel;
  DetailsScreen({
    Key key,
    this.nivel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalhes",
        ),
        elevation: 15,
      ),
      body: DetailsBody(
        nivel: nivel,
      ),
    );
  }
}
