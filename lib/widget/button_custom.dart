import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../config/color_config.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double fontSize;

  final BorderRadiusGeometry? borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double width;
  final double height;

  const ButtonCustom(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor = Colors.transparent,
      this.borderRadius,
      this.fontSize = 20.0,
      this.borderWidth = 2.0,
      this.borderColor = Colors.black,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(8),
                    side: BorderSide(color: borderColor, width: borderWidth))),
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontFamily: 'Iceberg', fontSize: fontSize),
        ));
  }
}
