part of 'add_note_cubit.dart';

@immutable
abstract class AddTegaraState {}

class AddTegaraInitial extends AddTegaraState {}

class AddTegaraLoading extends AddTegaraState {}

class AddTegaraSuccess extends AddTegaraState {}

class AddTegaraFailure extends AddTegaraState {
  final String errMessage;

  AddTegaraFailure(this.errMessage);
}
