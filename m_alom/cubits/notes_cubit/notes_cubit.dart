import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class MAlomCubit extends Cubit<MAlomState> {
  MAlomCubit() : super(MAlomInitial());

  List<MAlomModel>? malom;
  fetchAllMAlom() {
    var MAlomBox = Hive.box<MAlomModel>(mkAlomBox);

    malom = MAlomBox.values.toList();
    emit(MAlomSuccess());
  }
}
