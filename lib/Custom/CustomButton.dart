import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final Widget text;
  // ignore: prefer_typing_uninitialized_variables
  var cliclButton;
  CustomButton({
    Key? key,
    required this.text,
    required this.cliclButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: text,
      onPressed: cliclButton,
    );
  }
}
