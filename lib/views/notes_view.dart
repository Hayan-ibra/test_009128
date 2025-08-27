


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Padding(
      padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
      child: NotesViewBody(),
    ));
  }
}


