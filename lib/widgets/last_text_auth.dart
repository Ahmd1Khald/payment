import 'package:flutter/material.dart';

class LastText extends StatelessWidget {
  const LastText({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$firstText ',
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            secondText,
          ),
        ),
      ],
    );
  }
}
