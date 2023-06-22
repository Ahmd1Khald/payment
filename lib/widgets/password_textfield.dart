import 'package:flutter/material.dart';

class PassTextField extends StatefulWidget {
  final TextEditingController passController;

  const PassTextField({
    super.key,
    required this.passController,
  });

  @override
  _PassTextFieldState createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.white,
        ),
        hintText: 'Enter your password',
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.remove_red_eye : Icons.panorama_fish_eye,
            color: Colors.white,
          ),
          onPressed: _toggle,
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
      ),
      controller: widget.passController,
      obscureText: _obscureText,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return 'password is too small';
        }
        return null;
      },
    );
  }
}
