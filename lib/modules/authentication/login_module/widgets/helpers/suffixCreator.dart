import 'package:flutter/material.dart';
import 'package:global_news/modules/colors.dart';

Icon suffixCreator({required bool isValid}) {
  var iconData = isValid ? Icons.check_circle : Icons.error;
  var iconColor = isValid ? successColor : errorColor;
  return Icon(iconData, color: iconColor);
}
