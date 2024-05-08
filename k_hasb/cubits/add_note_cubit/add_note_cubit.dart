import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddHasbCubit extends Cubit<AddHasbState> {
  AddHasbCubit() : super(AddHasbInitial());

  Color color = const Color(0xffAC3931);
  addHasb(HasbModel hasb) async {
    hasb.color = color.value;
    emit(AddHasbLoading());
    try {
      var hasbBox = Hive.box<HasbModel>(kHasbBox);
      await hasbBox.add(hasb);
      emit(AddHasbSuccess());
    } catch (e) {
      emit(AddHasbFailure(e.toString()));
    }
  }
}
