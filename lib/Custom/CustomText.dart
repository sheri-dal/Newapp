// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  const CustomText({
    Key? key,
    required this.text,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
