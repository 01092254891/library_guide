import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class MAddEdaraCubit extends Cubit<MAddEdaraState> {
  MAddEdaraCubit() : super(MAddEdaraInitial());

  Color color = const Color(0xffAC3931);
  MaddEdara(MEdaraModel medara) async {
    medara.color = color.value;
    emit(MAddEdaraLoading());
    try {
      var medaraBox = Hive.box<MEdaraModel>(mkEdaraBox);
      await medaraBox.add(medara);
      emit(MAddEdaraSuccess());
    } catch (e) {
      emit(MAddEdaraFailure(e.toString()));
    }
  }
}
