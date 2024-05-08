import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_alom/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditAlomView extends StatelessWidget {
  const EditAlomView({Key? key, required this.alom}) : super(key: key);

  final AlomModel alom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditAlomViewBody(
        alom: alom,
      ),
    );
  }
}
