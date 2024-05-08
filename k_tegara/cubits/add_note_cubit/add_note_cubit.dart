import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddTegaraCubit extends Cubit<AddTegaraState> {
  AddTegaraCubit() : super(AddTegaraInitial());

  Color color = const Color(0xffAC3931);
  addTegara(TegaraModel tegara) async {
    tegara.color = color.value;
    emit(AddTegaraLoading());
    try {
      var tegaraBox = Hive.box<TegaraModel>(kTegaraBox);
      await tegaraBox.add(tegara);
      emit(AddTegaraSuccess());
    } catch (e) {
      emit(AddTegaraFailure(e.toString()));
    }
  }
}
