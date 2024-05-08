import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_alom/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class MEditAlomView extends StatelessWidget {
  const MEditAlomView({Key? key, required this.malom}) : super(key: key);

  final MAlomModel malom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MEditAlomViewBody(
        malom: malom,
      ),
    );
  }
}
