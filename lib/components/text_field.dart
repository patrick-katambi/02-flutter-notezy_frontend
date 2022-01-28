import 'package:flutter/material.dart';
import 'package:global_news/core/domain/theme.dart';
import 'package:provider/provider.dart';

class TextFieldCustom extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final String hint;
  final String? labelText;
  final bool? isObscured;
  final bool? autofocus;

  const TextFieldCustom({
    Key? key,
    required this.controller,
    required this.onChanged,
    required this.validator,
    this.keyboardType = TextInputType.emailAddress,
    this.prefix = const SizedBox.shrink(),
    this.suffix = const SizedBox.shrink(),
    required this.hint,
    this.labelText,
    this.isObscured = false,
    this.autofocus = false,
  }) : super(key: key);

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus!,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isObscured!,
      validator: widget.validator,
      onChanged: widget.onChanged,
      style: fieldTextStyle(context: context),
      decoration: InputDecoration(
        labelText: widget.labelText,
        errorStyle: errorTextStyle(context: context),
        labelStyle: Theme.of(context).textTheme.bodyText1,
        hintText: widget.hint,
        hintStyle: hintTextStyle(context: context),
        border: borderStyle(context: context),
        enabledBorder: borderStyle(context: context),
        focusedBorder: borderStyle(context: context),
        prefix: widget.prefix,
        suffixIcon: widget.suffix,
      ),
    );
  }

  TextStyle errorTextStyle({required BuildContext context}) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          color: Colors.red,
        );
  }

  TextStyle fieldTextStyle({required BuildContext context}) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          letterSpacing: 1.2,
        );
  }

  TextStyle hintTextStyle({required BuildContext context}) {
    return fieldTextStyle(context: context).copyWith(
      color: Colors.grey,
    );
  }

  OutlineInputBorder borderStyle({required BuildContext context}) {
    final themeMode = context.watch<ThemeDomain>().themeMode;
    final borderColor = themeMode == ThemeMode.light
        ? Theme.of(context).primaryColor
        : Colors.grey;
    return OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 0.5),
        borderRadius: BorderRadius.circular(10.0));
  }
}
