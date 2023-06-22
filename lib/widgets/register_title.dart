import 'package:flutter/material.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, top: 5.0),
      child: Text(
        title,
      ),
    );
  }
}
