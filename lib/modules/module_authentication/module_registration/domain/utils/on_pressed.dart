import 'package:flutter/material.dart';
import 'package:global_news/components/snackbar.dart';
import 'package:global_news/core/app_routes.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';

void onPressed({
  required BuildContext context,
  required GlobalKey<FormState> registerFormKey,
  required Registration registrationDomain,
}) async {
  if (registerFormKey.currentState!.validate()) {
    await registrationDomain.register();
    final snack = snackBar(
      text: registrationDomain.details,
      context: context,
    );
    ScaffoldMessenger.of(context).showSnackBar(snack);

    if (registrationDomain.message == "Success") {
      await Future.delayed(const Duration(seconds: 5));

      registrationDomain.setLoading(false);
      Navigator.popAndPushNamed(context, splashRoute);
    }
    // else {
    //   final snack2 = snackBar(
    //     text: registrationDomain.message,
    //     context: context,
    //   );
    //   ScaffoldMessenger.of(context).showSnackBar(snack2);
    // }
    registrationDomain.clearMessage();
  }
}
