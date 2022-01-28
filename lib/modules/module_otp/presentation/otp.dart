import 'package:flutter/material.dart';
import 'package:global_news/components/back_icon_button.dart';
import 'package:global_news/components/text_field.dart';
import 'package:global_news/modules/module_otp/presentation/components/otp_message.dart';
import 'package:global_news/modules/module_otp/presentation/components/otp_message_details.dart';
import 'package:global_news/core/domain/user.dart';
import 'package:global_news/components/button.dart';
import 'package:global_news/components/normal_text.dart';
import 'package:provider/provider.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userDomain = context.watch<UserDomain>();
    final username = userDomain.user.username;
    final phoneNumber = userDomain.user.phoneNumber;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 40.0),
            Row(children: const [BackIconButton(), Spacer()]),
            const SizedBox(height: 40.0),
            message(username: username!, context: context),
            const SizedBox(height: 20.0),
            otpMessageDetails(context: context, phoneNumber: phoneNumber!),
            const SizedBox(height: 40.0),
            TextFieldCustom(
              controller: _otpController,
              onChanged: (value) {},
              validator: (value) {},
              keyboardType: TextInputType.number,
              hint: "15486",
              autofocus: true,
              prefix: const Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: NormalText(text: "Enter Otp code:"),
              ),
            ),
            const SizedBox(height: 20.0),
            ButtonGlobal(onPressed: () {}, text: "Verify", buttonText: null),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
