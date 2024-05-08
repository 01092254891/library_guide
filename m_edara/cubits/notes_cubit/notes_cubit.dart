import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class MEdaraCubit extends Cubit<MEdaraState> {
  MEdaraCubit() : super(MEdaraInitial());

  List<MEdaraModel>? medara;
  fetchAllMEdara() {
    var medaraBox = Hive.box<MEdaraModel>(mkEdaraBox);

    medara = medaraBox.values.toList();
    emit(MEdaraSuccess());
  }
}
