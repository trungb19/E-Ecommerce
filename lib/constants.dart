import 'package:flutter/material.dart';

/*
* constanst.dart dùng để định nghĩa màu sắc, hiệu ứng cho dự án
*/

//Định nghĩa màu cho dự án
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);

//LinearGradient là độ thay đổi màu từ trên trái đến dưới phải
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xff757575);

//Thời lượng cho hiệu ứng
const kAnimationDuration = Duration(microseconds: 200);
