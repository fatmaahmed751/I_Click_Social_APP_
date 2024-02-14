import 'package:flutter/material.dart';

import '../calcualate_responsive__font-size.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size, heigtText;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final bool underline;
  final TextStyle? textStyle;

  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.size = 18,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.heigtText,
    this.textAlign,
    this.textStyle,
    this.underline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      selectionColor:Colors.red,
      style: textStyle ??
          TextStyle(
            decoration: TextDecoration.none,
            color: color,
            fontSize: getResponsiveFontSize(context , fontSize: size!),
            fontWeight: fontWeight,
            height: heigtText,
            fontFamily:'Bacute Regular',
          ),
    );
  }
}
//'NotoSerifHebrew'