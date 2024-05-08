import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddAlomCubit extends Cubit<AddAlomState> {
  AddAlomCubit() : super(AddAlomInitial());

  Color color = const Color(0xffAC3931);
  addAlom(AlomModel alom) async {
    alom.color = color.value;
    emit(AddAlomLoading());
    try {
      var alomBox = Hive.box<AlomModel>(kAlomBox);
      await alomBox.add(alom);
      emit(AddAlomSuccess());
    } catch (e) {
      emit(AddAlomFailure(e.toString()));
    }
  }
}
