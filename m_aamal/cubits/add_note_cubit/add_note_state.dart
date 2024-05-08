part of 'add_note_cubit.dart';

@immutable
abstract class AAddAlomState {}

class AAddAlomInitial extends AAddAlomState {}

class AAddAlomLoading extends AAddAlomState {}

class AAddAlomSuccess extends AAddAlomState {}

class AAddAlomFailure extends AAddAlomState {
  final String errMessage;

  AAddAlomFailure(this.errMessage);
}
