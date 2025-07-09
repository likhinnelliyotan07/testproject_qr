part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUserDataEvent extends UserEvent {
  final String userId;
  const GetUserDataEvent({required this.userId});
}

class ScanEvent extends UserEvent {
  final String scannedData;
  const ScanEvent({required this.scannedData});
}
