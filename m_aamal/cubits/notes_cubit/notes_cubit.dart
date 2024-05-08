import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class AAlomCubit extends Cubit<AAlomState> {
  AAlomCubit() : super(AAlomInitial());

  List<AAlomModel>? aalom;
  fetchAllAAlom() {
    var AAlomBox = Hive.box<AAlomModel>(akAlomBox);

    aalom = AAlomBox.values.toList();
    emit(AAlomSuccess());
  }
}
