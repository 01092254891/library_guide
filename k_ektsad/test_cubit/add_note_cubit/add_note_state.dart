part of 'add_note_cubit.dart';

@immutable
abstract class AddBookState {}

class AddBookInitial extends AddBookState {}

class AddBookLoading extends AddBookState {}

class AddBookSuccess extends AddBookState {}

class AddBookFailure extends AddBookState {
  final String errMessage;

  AddBookFailure(this.errMessage);
}
