import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../test_model/book_model.dart';

part 'notes_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());

  List<BookModel>? book;
  fetchAllBook() {
    var bookBox = Hive.box<BookModel>(kBookBox);

    book = bookBox.values.toList();
    emit(BookSuccess());
  }
}
