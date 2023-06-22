import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController phoneController;
  const PhoneTextField({
    Key? key,
    required this.phoneController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.phone,
        ),
        hintText: 'Enter your phone number',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      controller: phoneController,
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.length < 11) {
          return 'Invalid phone number';
        }
        return null;
      },
    );
  }
}
