import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class SkafaCubit extends Cubit<SkafaState> {
  SkafaCubit() : super(SkafaInitial());

  List<SkafaModel>? skafa;
  fetchAllSkafa() {
    var skafaBox = Hive.box<SkafaModel>(kSkafaBox);

    skafa = skafaBox.values.toList();
    emit(SkafaSuccess());
  }
}
