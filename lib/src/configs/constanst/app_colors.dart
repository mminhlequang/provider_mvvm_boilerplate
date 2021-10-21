import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../configs.dart';

class AppColors {
  AppColors._();

  static Color get primary => AppUtils.valueByMode(values: [primaryDark, primaryLight]);

  static Color get primaryDark => HexColor.fromHex('#FF6915');

  static Color get primaryLight => HexColor.fromHex('#FF6915');

  static Color get text => AppUtils.valueByMode(values: [textDark, textLight]);

  static Color get textDark => Colors.white;

  static Color get textLight => Colors.black;
}
