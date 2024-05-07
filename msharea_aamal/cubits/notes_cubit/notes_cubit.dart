import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class MHasbCubit extends Cubit<MHasbState> {
  MHasbCubit() : super(MHasbInitial());

  List<MHasbModel>? mhasb;
  fetchAllMHasb() {
    var MHasbBox = Hive.box<MHasbModel>(mkHasbBox);

    mhasb = MHasbBox.values.toList();
    emit(MHasbSuccess());
  }
}
