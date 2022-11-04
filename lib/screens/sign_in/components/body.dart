import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your email and password \n or continue with social media",
                textAlign: TextAlign.center,
              ),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = ["Demo Error"];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Tách ra thành custom_suffix_icon để dễ dàng tái sử dụng
              buildEmailFormField(),
              const SizedBox(
                height: 15,
              ),
              buildPasswordFormField(),
              FormError(errors: errors),
              const SizedBox(
                height: 20,
              ),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  } else {
                    _formKey.currentState?.save();
                  }
                },
              ),
            ],
          ),
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true, //Nhập vào không hiện mật mã
      decoration: InputDecoration(
        hintText: "Enter you password",
        labelText: "Password",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            errors.add("Please enter your email!");
          });
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter you email",
        labelText: "Email",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
