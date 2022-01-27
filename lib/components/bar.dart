import 'package:flutter/material.dart';
import 'package:global_news/components/bar_back_icon.dart';
import 'package:global_news/components/large_text.dart';

AppBar bar(
    {String? title, Widget? leadingIcon, required BuildContext context}) {
  return AppBar(
    title: title != null
        ? LargeTitleText(
            text: title,
            fontSize: 20.0,
            fontFamily: 'Mulish',
          )
        : const SizedBox.shrink(),
    centerTitle: true,
    leading: leadingIcon ?? const BarBackIcon(),
    automaticallyImplyLeading: true,
    elevation: 0.0,
    backgroundColor: Theme.of(context).primaryColor,
  );
}
