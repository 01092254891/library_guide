import 'package:flutter/material.dart';
import 'package:my_gradution_project/k_ektsad/test_view/views/widgets/edit_book_view_body.dart';

import '../../test_model/book_model.dart';

class EditBookView extends StatelessWidget {
  const EditBookView({Key? key, required this.book}) : super(key: key);

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditBookViewBody(
        book: book,
      ),
    );
  }
}
