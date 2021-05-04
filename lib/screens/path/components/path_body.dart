import 'package:flutter/material.dart';
import 'package:your_path_tsystems/screens/details/details.dart';
import 'package:your_path_tsystems/shared/cosntants/colors.dart';
import 'package:your_path_tsystems/shared/cosntants/text_styles.dart';

class PathBody extends StatefulWidget {
  @override
  _PathBodyState createState() => _PathBodyState();
}

class _PathBodyState extends State<PathBody> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // decoration: BoxDecoration(color: Colors.red.shade100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Escolha o nível que deseja consultar:",
                style: AppTextStyles.titleBold,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ClickableCard(text: "Estagiário"),
                  ClickableCard(text: "Júnior"),
                  ClickableCard(text: "Pleno"),
                  ClickableCard(text: "Sênior"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClickableCard extends StatelessWidget {
  String text;

  ClickableCard({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsScreen(
            nivel: text,
          );
        }));
      },
      child: Card(
        child: Container(
          height: 100,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// CheckboxListTile(
//   title: Text("Path1"),
//   // secondary: Icon(Icons.check_circle),
//   controlAffinity: ListTileControlAffinity.platform,
//   value: _checked,
//   onChanged: (bool value) {
//     setState(() {
//       _checked = value;
//     });
//   },
// ),
