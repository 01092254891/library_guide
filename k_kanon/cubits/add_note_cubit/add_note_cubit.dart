import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddKanonCubit extends Cubit<AddKanonState> {
  AddKanonCubit() : super(AddKanonInitial());

  Color color = const Color(0xffAC3931);
  addKanon(KanonModel kanon) async {
    kanon.color = color.value;
    emit(AddKanonLoading());
    try {
      var kanonBox = Hive.box<KanonModel>(kKanonBox);
      await kanonBox.add(kanon);
      emit(AddKanonSuccess());
    } catch (e) {
      emit(AddKanonFailure(e.toString()));
    }
  }
}
