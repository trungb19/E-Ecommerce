import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Text(
            "TOKOTO",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
