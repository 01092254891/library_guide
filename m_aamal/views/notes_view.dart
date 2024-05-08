import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_aamal/views/widgets/add_note_bottom_sheet.dart';
import 'package:my_gradution_project/m_aamal/views/widgets/notes_view_body.dart';

class AAlomView extends StatelessWidget {
  const AAlomView({Key? key}) : super(key: key);

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
                return AAddAlomBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: AAlomViewBody(),
    );
  }
}
