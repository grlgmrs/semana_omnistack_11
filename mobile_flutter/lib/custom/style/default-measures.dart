import 'package:flutter/widgets.dart';

class DefaultMeasures {
  static double _width;
  static double _height;

  static setMeasures({
    @required MediaQueryData mediaQueryData
  }) {
    _width = mediaQueryData.size.width;
    _height = mediaQueryData.size.height;
  }

  static double get width => _width;
  static double get height => _height;

  static double get horizontalPadding => 24.0;
  static double get verticalPadding => 24.0;
}