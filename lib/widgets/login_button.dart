import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  RegisterButton({
    Key? key,
    formKey,
    required this.onPressed,
  }) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
          onPressed: onPressed,
          child: const Text(
            'Register',
          )),
    );
  }
}
