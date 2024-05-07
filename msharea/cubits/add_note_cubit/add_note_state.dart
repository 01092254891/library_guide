part of 'add_note_cubit.dart';

@immutable
abstract class AAddNoteState {}

class AAddNoteInitial extends AAddNoteState {}

class AAddNoteLoading extends AAddNoteState {}

class AAddNoteSuccess extends AAddNoteState {}

class AAddNoteFailure extends AAddNoteState {
  final String errMessage;

  AAddNoteFailure(this.errMessage);
}
