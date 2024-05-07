import 'package:flutter/material.dart';
import 'package:my_gradution_project/msharea/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class AEditNoteView extends StatelessWidget {
  const AEditNoteView({Key? key, required this.anote}) : super(key: key);

  final ANoteModel anote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AEditNoteViewBody(
        anote: anote,
      ),
    );
  }
}
