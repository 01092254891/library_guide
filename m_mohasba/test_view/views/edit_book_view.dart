import 'package:flutter/material.dart';
import 'package:my_gradution_project/m_mohasba/test_view/views/widgets/edit_book_view_body.dart';

import '../../test_model/book_model.dart';

class AEditBookView extends StatelessWidget {
  const AEditBookView({Key? key, required this.abook}) : super(key: key);

  final ABookModel abook;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AEditBookViewBody(
        abook: abook,
      ),
    );
  }
}
