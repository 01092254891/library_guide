import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class MAddAlomCubit extends Cubit<MAddAlomState> {
  MAddAlomCubit() : super(MAddAlomInitial());

  Color color = const Color(0xffAC3931);
  maddAlom(MAlomModel malom) async {
    malom.color = color.value;
    emit(MAddAlomLoading());
    try {
      var MalomBox = Hive.box<MAlomModel>(mkAlomBox);
      await MalomBox.add(malom);
      emit(MAddAlomSuccess());
    } catch (e) {
      emit(MAddAlomFailure(e.toString()));
    }
  }
}
