import 'package:flutter/material.dart';

AppBar bar({required String title}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 0.0,
  );
}
