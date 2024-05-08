import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import '../../../test_model/book_model.dart';
import 'custom-book_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        List<BookModel> books = BlocProvider.of<BookCubit>(context).book!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: books.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: BookItem(
                    book: books[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
