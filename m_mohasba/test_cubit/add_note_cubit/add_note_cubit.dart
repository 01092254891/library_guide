import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../test_model/book_model.dart';

part 'add_note_state.dart';

class AAddBookCubit extends Cubit<AAddBookState> {
  AAddBookCubit() : super(AAddBookInitial());

  Color color = const Color(0xffAC3931);
  aaddBook(ABookModel abook) async {
    abook.color = color.value;
    emit(AAddBookLoading());
    try {
      var abookBox = Hive.box<ABookModel>(akBookBox);
      await abookBox.add(abook);
      emit(AAddBookSuccess());
    } catch (e) {
      emit(AAddBookFailure(e.toString()));
    }
  }
}
