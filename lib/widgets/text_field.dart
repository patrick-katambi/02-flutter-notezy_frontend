import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final String hint;
  final String labelText;
  final bool? isObscured;
  const TextFieldCustom({
    Key? key,
    required this.controller,
    required this.onChanged,
    required this.validator,
    this.keyboardType = TextInputType.emailAddress,
    this.prefix = const SizedBox.shrink(),
    this.suffix = const SizedBox.shrink(),
    required this.hint,
    required this.labelText,
    this.isObscured = false,
  }) : super(key: key);

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool isSuccess = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    // the context will help in theme management possibly 🤷‍♂️
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.5),
        borderRadius: BorderRadius.circular(10.0));
  }
}
