part of 'add_note_cubit.dart';

@immutable
abstract class SAddNoteState {}

class SAddNoteInitial extends SAddNoteState {}

class SAddNoteLoading extends SAddNoteState {}

class SAddNoteSuccess extends SAddNoteState {}

class SAddNoteFailure extends SAddNoteState {
  final String errMessage;

  SAddNoteFailure(this.errMessage);
}
