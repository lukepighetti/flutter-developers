import 'package:flutter/widgets.dart'
    show ImageProvider, Color, LinearGradient, Gradient, HSVColor;
import 'dart:math' show max, min;

class Book {
  int isbn;
  String title;
  String author;
  ImageProvider hero;
  Color color;
  String body;

  Book({
    this.isbn,
    this.title,
    this.author,
    this.hero,
    this.color,
    this.body,
  });
}

class ColorTransition {
  List<Color> colors;
  double offset;
  double maxExtent;

  Color blendedColor;

  ColorTransition({
    this.colors,
    this.offset,
    this.maxExtent,
  }) {
    double period = maxExtent / (colors.length - 1);

    /// limit index to positive integers
    int index = max(0, (offset / period).floor());

    Color firstColor = colors[index];

    /// this stops us from trying to blend a null secondColor
    /// when we're at the end of the list
    if (index != colors.length - 1) {
      Color secondColor = colors[index + 1];

      /// limit offset to within the bounds,
      /// this is to help with iOS overshooting scroll bounds
      double blend = (min(max(0.0, offset), maxExtent) % period) / period;

      this.blendedColor = Color.lerp(firstColor, secondColor, blend);
    } else {
      /// we're at the end of the list, so there's nothing to interpolate towards
      this.blendedColor = firstColor;
    }
  }
}

class DoubleColor {
  double number;
  Color color;

  DoubleColor(this.number, this.color);
}
