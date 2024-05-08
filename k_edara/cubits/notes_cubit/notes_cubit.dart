import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class EdaraCubit extends Cubit<EdaraState> {
  EdaraCubit() : super(EdaraInitial());

  List<EdaraModel>? edara;
  fetchAllEdara() {
    var edaraBox = Hive.box<EdaraModel>(kEdaraBox);

    edara = edaraBox.values.toList();
    emit(EdaraSuccess());
  }
}
