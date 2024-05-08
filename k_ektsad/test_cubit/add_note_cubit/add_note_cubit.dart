import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../test_model/book_model.dart';

part 'add_note_state.dart';

class AddBookCubit extends Cubit<AddBookState> {
  AddBookCubit() : super(AddBookInitial());

  Color color = const Color(0xffAC3931);
  addBook(BookModel book) async {
    book.color = color.value;
    emit(AddBookLoading());
    try {
      var bookBox = Hive.box<BookModel>(kBookBox);
      await bookBox.add(book);
      emit(AddBookSuccess());
    } catch (e) {
      emit(AddBookFailure(e.toString()));
    }
  }
}
