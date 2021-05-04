import 'package:flutter/material.dart';
import 'package:your_path_tsystems/shared/cosntants/colors.dart';

class DefaultButtom extends StatelessWidget {
  const DefaultButtom({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
    );
  }
}
