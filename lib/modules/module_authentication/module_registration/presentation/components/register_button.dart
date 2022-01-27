import 'package:flutter/material.dart';
import 'package:global_news/components/normal_text.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/components/button.dart';
import 'package:global_news/components/loading.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/utils/on_pressed.dart';
import 'package:provider/provider.dart';

class RegisterButton extends StatelessWidget {
  final GlobalKey<FormState> registerFormKey;

  const RegisterButton({
    Key? key,
    required this.registerFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();
    return ButtonGlobal(
      onPressed: () async {
        if (registerFormKey.currentState!.validate()) {
          registrationDomain.register();
        }
      },
      text: 'Register',
      buttonText: null,
    );
  }
}

Widget registerButton({
  required BuildContext context,
  required GlobalKey<FormState> registerFormKey,
  required String username,
}) {
  final registrationDomain = context.watch<Registration>();
  final loading = registrationDomain.loading;
  return ButtonGlobal(
    onPressed: () => onPressed(
      context: context,
      registerFormKey: registerFormKey,
      registrationDomain: registrationDomain,
    ),
    text: 'Register',
    buttonText: loading
        ? const LoadingGlobal()
        : const NormalText(text: "Register", color: Colors.white),
  );
}
