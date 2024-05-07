import 'package:flutter/material.dart';
import 'package:my_gradution_project/msharea/views/widgets/add_note_bottom_sheet.dart';
import 'package:my_gradution_project/msharea/views/widgets/notes_view_body.dart';

class ANotesView extends StatelessWidget {
  const ANotesView({Key? key}) : super(key: key);

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
                return AAddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: ANotesViewBody(),
    );
  }
}
