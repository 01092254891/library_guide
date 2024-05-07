import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class MAddHasbCubit extends Cubit<MAddHasbState> {
  MAddHasbCubit() : super(MAddHasbInitial());

  Color color = const Color(0xffAC3931);
  maddHasb(MHasbModel mhasb) async {
    mhasb.color = color.value;
    emit(MAddHasbLoading());
    try {
      var mhasbBox = Hive.box<MHasbModel>(mkHasbBox);
      await mhasbBox.add(mhasb);
      emit(MAddHasbSuccess());
    } catch (e) {
      emit(MAddHasbFailure(e.toString()));
    }
  }
}
