import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class SNotesCubit extends Cubit<SNotesState> {
  SNotesCubit() : super(SNotesInitial());

  List<SNoteModel>? snote;
  fetchAllSNotes() {
    var sbookBox = Hive.box<SNoteModel>(skNotesBox);

    snote = sbookBox.values.toList();
    emit(SNotesSuccess());
  }
}
