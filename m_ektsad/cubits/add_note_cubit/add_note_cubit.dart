import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class SAddNoteCubit extends Cubit<SAddNoteState> {
  SAddNoteCubit() : super(SAddNoteInitial());

  Color color = const Color(0xffAC3931);
  saddNote(SNoteModel snote) async {
    snote.color = color.value;
    emit(SAddNoteLoading());
    try {
      var snotesBox = Hive.box<SNoteModel>(skNotesBox);
      await snotesBox.add(snote);
      emit(SAddNoteSuccess());
    } catch (e) {
      emit(SAddNoteFailure(e.toString()));
    }
  }
}
