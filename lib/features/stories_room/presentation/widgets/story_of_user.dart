
import 'package:flutter/material.dart';

enum MediaType { image, text }

class Story {
  final MediaType mediaType;
  final String url;
  final double duration;
  final String caption;
  final DateTime date;
  final Color color;

  Story({
    required this.mediaType,
    required this.caption,
    required this.date,
    this.url='',
    this.duration = 5.0,
    this.color = Colors.grey,
  });
}