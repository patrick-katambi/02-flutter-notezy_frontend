import 'package:flutter/material.dart';

class LoadingGlobal extends StatelessWidget {
  const LoadingGlobal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20.0,
      width: 20.0,
      child: CircularProgressIndicator(
        strokeWidth: 2.0,
      ),
    );
  }
}
