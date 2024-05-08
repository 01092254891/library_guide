import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_hasb/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditHasbView extends StatelessWidget {
  const EditHasbView({Key? key, required this.hasb}) : super(key: key);

  final HasbModel hasb;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditHasbViewBody(
        hasb: hasb,
      ),
    );
  }
}
