import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_mohasba/test_view/views/widgets/add_book_bottom_sheet.dart';
import 'package:my_gradution_project/m_mohasba/test_view/views/widgets/book_view_body.dart';

class ABookView extends StatelessWidget {
  const ABookView({Key? key}) : super(key: key);

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
                return AAddBookBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: ABookViewBody(),
    );
  }
}
