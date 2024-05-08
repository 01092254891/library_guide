import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AAddAlomCubit extends Cubit<AAddAlomState> {
  AAddAlomCubit() : super(AAddAlomInitial());

  Color color = const Color(0xffAC3931);
  aaddAlom(AAlomModel aalom) async {
    aalom.color = color.value;
    emit(AAddAlomLoading());
    try {
      var aalomBox = Hive.box<AAlomModel>(akAlomBox);
      await aalomBox.add(aalom);
      emit(AAddAlomSuccess());
    } catch (e) {
      emit(AAddAlomFailure(e.toString()));
    }
  }
}
