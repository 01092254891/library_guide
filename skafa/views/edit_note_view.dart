import 'package:flutter/material.dart';
import 'package:my_gradution_project/skafa/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditSkafaView extends StatelessWidget {
  const EditSkafaView({Key? key, required this.skafa}) : super(key: key);

  final SkafaModel skafa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditSkafaViewBody(
        skafa: skafa,
      ),
    );
  }
}
