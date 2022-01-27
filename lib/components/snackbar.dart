import 'package:flutter/material.dart';
import 'package:global_news/components/normal_text.dart';

SnackBar snackBar({required String text, required BuildContext context}) {
  return SnackBar(
    backgroundColor: Theme.of(context).primaryColor,
    content: NormalText(
      text: text,
      color: Colors.white,
      textAlign: TextAlign.center,
    ),
  );
}
