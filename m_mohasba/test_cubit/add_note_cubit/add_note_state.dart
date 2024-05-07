part of 'add_note_cubit.dart';

@immutable
abstract class AAddBookState {}

class AAddBookInitial extends AAddBookState {}

class AAddBookLoading extends AAddBookState {}

class AAddBookSuccess extends AAddBookState {}

class AAddBookFailure extends AAddBookState {
  final String errMessage;

  AAddBookFailure(this.errMessage);
}
