import 'package:flutter/material.dart';
import 'package:global_news/widgets/barBackIcon.dart';

AppBar bar(
    {String? title, Widget? leadingIcon, required BuildContext context}) {
  return AppBar(
    title: title != null ? Text(title) : const SizedBox.shrink(),
    centerTitle: true,
    leading: leadingIcon ?? const BarBackIcon(),
    automaticallyImplyLeading: true,
    elevation: 0.0,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor.withBlue(30),
  );
}
