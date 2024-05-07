import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddSkafaCubit extends Cubit<AddSkafaState> {
  AddSkafaCubit() : super(AddSkafaInitial());

  Color color = const Color(0xffAC3931);
  addSkafa(SkafaModel skafa) async {
    skafa.color = color.value;
    emit(AddSkafaLoading());
    try {
      var skafaBox = Hive.box<SkafaModel>(kSkafaBox);
      await skafaBox.add(skafa);
      emit(AddSkafaSuccess());
    } catch (e) {
      emit(AddSkafaFailure(e.toString()));
    }
  }
}
