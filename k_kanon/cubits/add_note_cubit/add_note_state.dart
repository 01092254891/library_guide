part of 'add_note_cubit.dart';

@immutable
abstract class AddKanonState {}

class AddKanonInitial extends AddKanonState {}

class AddKanonLoading extends AddKanonState {}

class AddKanonSuccess extends AddKanonState {}

class AddKanonFailure extends AddKanonState {
  final String errMessage;

  AddKanonFailure(this.errMessage);
}
