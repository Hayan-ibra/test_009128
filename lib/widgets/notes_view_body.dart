import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/NoteModel.dart';

import 'custom_appbar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        CustomAppbar(),
    Expanded(child: ListView(children: [
CustomNoteItem(model:  NoteModel(
    noteTitle: "My First Note",
    noteContent: "This is the content of my first note asdsadsa d ad ads asad asd adasads das  ssdasadsa .",
    backgroundColor: Colors.blue,
    timeStamp: "Jan 2022",
    )),
      CustomNoteItem(model:  NoteModel(
        noteTitle: "My First Note",
        noteContent: "This is the content of my first note.",
        backgroundColor: Colors.red,
        timeStamp: "Aug 2025",
      )),


    ],))
    ],
    ) ;
  }
}


