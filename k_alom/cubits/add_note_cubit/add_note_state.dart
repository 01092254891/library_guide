part of 'add_note_cubit.dart';

@immutable
abstract class AddAlomState {}

class AddAlomInitial extends AddAlomState {}

class AddAlomLoading extends AddAlomState {}

class AddAlomSuccess extends AddAlomState {}

class AddAlomFailure extends AddAlomState {
  final String errMessage;

  AddAlomFailure(this.errMessage);
}
