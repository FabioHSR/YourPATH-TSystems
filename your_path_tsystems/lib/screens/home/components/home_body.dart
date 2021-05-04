import 'package:flutter/cupertino.dart';
import 'package:your_path_tsystems/screens/path/path.dart';
import 'package:your_path_tsystems/shared/cosntants/text_styles.dart';
import 'package:your_path_tsystems/shared/widgets/default_button.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "BEM VINDO!",
              style: AppTextStyles.titleBold,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Este app foi pensado para te ajudar a entender o seu caminho aqui na T-Systems.",
              style: AppTextStyles.body16,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Através dele voce terá fácil acesso à lista de conhecimentos necessários para dar o próximo passo na sua carreira.",
              style: AppTextStyles.body16,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Além disso, você poderá controlar seu avanço de forma simples e objetiva.",
              style: AppTextStyles.body16,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Vamos começar?",
              style: AppTextStyles.title,
            ),
            Expanded(
              child: Center(
                child: DefaultButtom(
                    text: "Vamos!",
                    press: () {
                      Navigator.pushNamed(context, PathScreen.routeName);
                    }),
              ),
            )
          ],
        ),
      )),
    );
  }
}
