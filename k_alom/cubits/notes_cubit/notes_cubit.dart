import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class AlomCubit extends Cubit<AlomState> {
  AlomCubit() : super(AlomInitial());

  List<AlomModel>? alom;
  fetchAllAlom() {
    var AlomBox = Hive.box<AlomModel>(kAlomBox);

    alom = AlomBox.values.toList();
    emit(AlomSuccess());
  }
}
