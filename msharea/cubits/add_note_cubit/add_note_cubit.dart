import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AAddNoteCubit extends Cubit<AAddNoteState> {
  AAddNoteCubit() : super(AAddNoteInitial());

  Color color = const Color(0xffAC3931);
  aaddNote(ANoteModel anote) async {
    anote.color = color.value;
    emit(AAddNoteLoading());
    try {
      var anotesBox = Hive.box<ANoteModel>(akNotesBox);
      await anotesBox.add(anote);
      emit(AAddNoteSuccess());
    } catch (e) {
      emit(AAddNoteFailure(e.toString()));
    }
  }
}
