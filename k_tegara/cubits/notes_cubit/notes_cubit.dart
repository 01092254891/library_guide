import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class TegaraCubit extends Cubit<TegaraState> {
  TegaraCubit() : super(TegaraInitial());

  List<TegaraModel>? tegara;
  fetchAllTegara() {
    var TegaraBox = Hive.box<TegaraModel>(kTegaraBox);

    tegara = TegaraBox.values.toList();
    emit(TegaraSuccess());
  }
}
