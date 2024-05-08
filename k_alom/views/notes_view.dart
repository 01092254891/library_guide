import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_alom/views/widgets/add_note_bottom_sheet.dart';
import 'package:my_gradution_project/k_alom/views/widgets/notes_view_body.dart';

class AlomView extends StatelessWidget {
  const AlomView({Key? key}) : super(key: key);

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
                return AddAlomBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: AlomViewBody(),
    );
  }
}
