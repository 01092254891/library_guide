import 'package:flutter/material.dart';
import 'package:my_gradution_project/msharea_aamal/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class MEditHasbView extends StatelessWidget {
  const MEditHasbView({Key? key, required this.mhasb}) : super(key: key);

  final MHasbModel mhasb;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MEditHasbViewBody(
        mhasb: mhasb,
      ),
    );
  }
}
