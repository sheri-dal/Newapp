import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  var icon;
  bool Obscure = false;
  final String hinttext;
  final String labeltext;
  // ignore: prefer_typing_uninitialized_variables
  final TextEditingController controller;
  final String validationtext;

  CustomTextField(
      {Key? key,
      this.icon,
      required this.hinttext,
      required this.labeltext,
      required this.validationtext,
      // ignore: non_constant_identifier_names
      this.Obscure = false,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: TextFormField(
        obscureText: Obscure,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return validationtext;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hinttext,
          labelText: labeltext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
