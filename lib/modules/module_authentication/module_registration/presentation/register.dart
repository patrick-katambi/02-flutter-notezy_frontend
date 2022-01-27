import 'package:flutter/material.dart';
import 'package:global_news/components/back_icon_button.dart';
import 'package:global_news/core/app_routes.dart';
import 'package:global_news/modules/module_authentication/module_login/presentation/component/login_message.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/components/register_button.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/components/register_form.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/components/register_message.dart';
import 'package:global_news/components/login_or_register.dart';
import 'package:global_news/public_domains/user.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();

    Widget clearUser() {
      registrationDomain.userClear();
      return const SizedBox.shrink();
    }
    final userDomain = context.watch<UserDomain>();
    final username = userDomain.user.username;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      // appBar: bar(context: context, title: "Register"),
      body: orientation == Orientation.landscape
              ? Stack(
                  children: [
                    clearUser(),
                    ListView(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.15,
                      ),
                      physics: const BouncingScrollPhysics(),
                      children: [
                        const SizedBox(height: 50.0),
                        const LoginMessage(),
                        const SizedBox(height: 20.0),
                        RegisterForm(registerFormKey: _registerFormKey),
                        const SizedBox(height: 40.0),
                        registerButton(context: context,registerFormKey: _registerFormKey, username: username!),
                        const SizedBox(height: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [AlreadyRegistered()],
                        ),
                        const SizedBox(height: 40.0),
                      ],
                    ),
                    const Positioned(
                        top: 50.0, left: 10.0, child: BackIconButton())
                  ],
                )
              : Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const SizedBox(height: 50.0),
                          Row(children: const [BackIconButton(), Spacer()]),
                          const SizedBox(height: 40.0),
                          const RegisterMessage(),
                          const SizedBox(height: 40.0),
                          RegisterForm(registerFormKey: _registerFormKey),
                          const SizedBox(height: 40.0),
                          registerButton(context: context,registerFormKey: _registerFormKey, username: username!),
                          const SizedBox(height: 20.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [AlreadyRegistered()],
                          ),
                          const SizedBox(height: 40.0),
                        ],
                      ),
                    ),
                  ],
                ),
    );
  }
}

class AlreadyRegistered extends StatelessWidget {
  const AlreadyRegistered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginOrRegister(
      route: loginRoute,
      message: 'Already have an account?  ',
      routePlaceHolder: 'Login',
    );
  }
}
