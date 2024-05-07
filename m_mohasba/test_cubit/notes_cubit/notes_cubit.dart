import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../test_model/book_model.dart';

part 'notes_state.dart';

class ABookCubit extends Cubit<ABookState> {
  ABookCubit() : super(ABookInitial());

  List<ABookModel>? abook;
  fetchAllABook() {
    var abookBox = Hive.box<ABookModel>(akBookBox);

    abook = abookBox.values.toList();
    emit(ABookSuccess());
  }
}
