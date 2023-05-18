
import 'dart:math';

import 'package:flutter/material.dart';

class ColorfulText extends StatelessWidget {
  final text;
  final fontSize;

  const ColorfulText({super.key, required this.text,  this.fontSize = 14.0});

  @override
  Widget build(BuildContext context) {
      return createColorfulText(text, fontSize: fontSize);
  }


}

createColorfulText(String text, {double fontSize = 14.0}) {
  var spans = <TextSpan>[];
  for (var i = 0; i < text.length; i++) {
    spans.add(TextSpan(
      text: text[i],
      style: TextStyle(fontSize: fontSize, color: randomColor()),
    ));
  }
  return Text.rich(TextSpan(children: spans));
}

randomColor() {
  var random = Random();
  int r = 30 + random.nextInt(200);
  int g = 30 + random.nextInt(200);
  int b = 30 + random.nextInt(200);
  return Color.fromARGB(255, r, g, b);
}