import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_aamal/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class AEditAlomView extends StatelessWidget {
  const AEditAlomView({Key? key, required this.aalom}) : super(key: key);

  final AAlomModel aalom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AEditAlomViewBody(
        aalom: aalom,
      ),
    );
  }
}
