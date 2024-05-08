part of 'add_note_cubit.dart';

@immutable
abstract class AddEdaraState {}

class AddEdaraInitial extends AddEdaraState {}

class AddEdaraLoading extends AddEdaraState {}

class AddEdaraSuccess extends AddEdaraState {}

class AddEdaraFailure extends AddEdaraState {
  final String errMessage;

  AddEdaraFailure(this.errMessage);
}
