import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_hasb/views/widgets/add_note_bottom_sheet.dart';
import 'package:my_gradution_project/k_hasb/views/widgets/notes_view_body.dart';

class HasbView extends StatelessWidget {
  const HasbView({Key? key}) : super(key: key);

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
                return AddHasbBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: HasbViewBody(),
    );
  }
}
