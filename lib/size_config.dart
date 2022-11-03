/*
* size_config.dart dùng để cài đặt kích thước
*/

import 'package:flutter/material.dart';

class SizeConfig {
  //Static các biến tĩnh có thể truy cập trực tiếp trong các phương thức tĩnh
  //Null safety các biến trong chương trình không được nhận giá trị null trừ khi chúng được chỉ định rõ là null
  //Các biến kiểu non-nullable không được gán ngay lập tức nên dùng từ khóa late
  //MediaQueryData truy vấn dữ liệu, vd MediaQueryData.size
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  //Định hướng
  static Orientation? orientation;

  //Hàm khởi tạo các thuộc tính
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Hàm lấy chiều cao theo kích thước màn hình
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

//Hàm lấy chiều rộng theo kích thước màn hình
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}
