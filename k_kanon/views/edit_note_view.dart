import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_edara/views/widgets/edit_note_view_body.dart';
import 'package:my_gradution_project/k_kanon/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditKanonView extends StatelessWidget {
  const EditKanonView({Key? key, required this.kanon}) : super(key: key);

  final KanonModel kanon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditKanonViewBody(
        kanon: kanon,
      ),
    );
  }
}
