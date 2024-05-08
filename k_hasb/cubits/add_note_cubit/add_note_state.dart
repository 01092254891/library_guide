part of 'add_note_cubit.dart';

@immutable
abstract class AddHasbState {}

class AddHasbInitial extends AddHasbState {}

class AddHasbLoading extends AddHasbState {}

class AddHasbSuccess extends AddHasbState {}

class AddHasbFailure extends AddHasbState {
  final String errMessage;

  AddHasbFailure(this.errMessage);
}
