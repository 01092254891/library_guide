part of 'add_note_cubit.dart';

@immutable
abstract class MAddAlomState {}

class MAddAlomInitial extends MAddAlomState {}

class MAddAlomLoading extends MAddAlomState {}

class MAddAlomSuccess extends MAddAlomState {}

class MAddAlomFailure extends MAddAlomState {
  final String errMessage;

  MAddAlomFailure(this.errMessage);
}
