import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  final TextEditingController emailController;
  const EmailTextField({
    super.key,
    required this.emailController,
  });

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter your email',
        prefixIcon: Icon(
          Icons.email,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.blue,
        )),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
      ),
      controller: widget.emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is too small';
        }
        return null;
      },
    );
  }
}
