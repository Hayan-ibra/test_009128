import 'package:flutter/material.dart';

class NoteModel {
  final String noteTitle;
  final String noteContent;
  final MaterialColor backgroundColor;
  final String timeStamp;

  NoteModel({
    required this.noteTitle,
    required this.noteContent,
    required this.backgroundColor,
    required this.timeStamp,
  });
}



