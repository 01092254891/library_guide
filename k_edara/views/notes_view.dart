import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_edara/views/widgets/add_note_bottom_sheet.dart';
import 'package:my_gradution_project/k_edara/views/widgets/notes_view_body.dart';

class EdaraView extends StatelessWidget {
  const EdaraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddEdaraBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: EdaraViewBody(),
    );
  }
}
