import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class KanonCubit extends Cubit<KanonState> {
  KanonCubit() : super(KanonInitial());

  List<KanonModel>? kanon;
  fetchAllKanon() {
    var kanonBox = Hive.box<KanonModel>(kKanonBox);

    kanon = kanonBox.values.toList();
    emit(KanonSuccess());
  }
}
