part of 'add_note_cubit.dart';

@immutable
abstract class MAddHasbState {}

class MAddHasbInitial extends MAddHasbState {}

class MAddHasbLoading extends MAddHasbState {}

class MAddHasbSuccess extends MAddHasbState {}

class MAddHasbFailure extends MAddHasbState {
  final String errMessage;

  MAddHasbFailure(this.errMessage);
}
