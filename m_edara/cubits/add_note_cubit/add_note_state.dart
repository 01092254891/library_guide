part of 'add_note_cubit.dart';

@immutable
abstract class MAddEdaraState {}

class MAddEdaraInitial extends MAddEdaraState {}

class MAddEdaraLoading extends MAddEdaraState {}

class MAddEdaraSuccess extends MAddEdaraState {}

class MAddEdaraFailure extends MAddEdaraState {
  final String errMessage;

  MAddEdaraFailure(this.errMessage);
}
