import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_edara/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class MEditEdaraView extends StatelessWidget {
  const MEditEdaraView({Key? key, required this.medara}) : super(key: key);

  final MEdaraModel medara;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MEditEdaraViewBody(
        medara: medara,
      ),
    );
  }
}
