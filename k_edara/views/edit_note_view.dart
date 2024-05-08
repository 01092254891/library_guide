import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_edara/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditEdaraView extends StatelessWidget {
  const EditEdaraView({Key? key, required this.edara}) : super(key: key);

  final EdaraModel edara;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditEdaraViewBody(
        edara: edara,
      ),
    );
  }
}
