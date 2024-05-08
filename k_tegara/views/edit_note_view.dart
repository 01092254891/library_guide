import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_tegara/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditTegaraView extends StatelessWidget {
  const EditTegaraView({Key? key, required this.tegara}) : super(key: key);

  final TegaraModel tegara;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditTegaraViewBody(
        tegara: tegara,
      ),
    );
  }
}
