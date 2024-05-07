part of 'add_note_cubit.dart';

@immutable
abstract class AddSkafaState {}

class AddSkafaInitial extends AddSkafaState {}

class AddSkafaLoading extends AddSkafaState {}

class AddSkafaSuccess extends AddSkafaState {}

class AddSkafaFailure extends AddSkafaState {
  final String errMessage;

  AddSkafaFailure(this.errMessage);
}
