import 'package:flutter/material.dart';
import 'package:global_news/core/app_routes.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/widgets/button.dart';
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
    );
  }
}
