import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
            // there is a small space pefore the button this line code will removes it
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 52)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Text(
          "Get Started",
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
