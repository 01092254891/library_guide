import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddEdaraCubit extends Cubit<AddEdaraState> {
  AddEdaraCubit() : super(AddEdaraInitial());

  Color color = const Color(0xffAC3931);
  addEdara(EdaraModel edara) async {
    edara.color = color.value;
    emit(AddEdaraLoading());
    try {
      var edaraBox = Hive.box<EdaraModel>(kEdaraBox);
      await edaraBox.add(edara);
      emit(AddEdaraSuccess());
    } catch (e) {
      emit(AddEdaraFailure(e.toString()));
    }
  }
}
