import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class ANotesCubit extends Cubit<ANotesState> {
  ANotesCubit() : super(ANotesInitial());

  List<ANoteModel>? anote;
  fetchAllANotes() {
    var abookBox = Hive.box<ANoteModel>(akNotesBox);

    anote = abookBox.values.toList();
    emit(ANotesSuccess());
  }
}
