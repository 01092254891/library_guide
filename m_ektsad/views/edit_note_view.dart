import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_ektsad/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class SEditNoteView extends StatelessWidget {
  const SEditNoteView({Key? key, required this.snote}) : super(key: key);

  final SNoteModel snote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SEditNoteViewBody(
        snote: snote,
      ),
    );
  }
}
