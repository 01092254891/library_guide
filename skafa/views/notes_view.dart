import 'package:flutter/material.dart';
import 'package:my_gradution_project/skafa/views/widgets/add_note_bottom_sheet.dart';
import 'package:my_gradution_project/skafa/views/widgets/notes_view_body.dart';

class SkafaView extends StatelessWidget {
  const SkafaView({Key? key}) : super(key: key);

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
                return AddSkafaBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: SkafaViewBody(),
    );
  }
}
