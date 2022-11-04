import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 100,
          ),
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
