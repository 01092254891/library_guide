import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class HasbCubit extends Cubit<HasbState> {
  HasbCubit() : super(HasbInitial());

  List<HasbModel>? hasb;
  fetchAllHasb() {
    var HasbBox = Hive.box<HasbModel>(kHasbBox);

    hasb = HasbBox.values.toList();
    emit(HasbSuccess());
  }
}
