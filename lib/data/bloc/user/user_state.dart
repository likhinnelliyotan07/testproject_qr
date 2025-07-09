part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();
  @override
  List<Object?> get props => [];
}

class UserInitial extends UserState {}

class GetUserDataState extends UserState {
  final UserModel? userModel;
  final ProviderStatus status;
  final String? error;
  const GetUserDataState({
    this.userModel,
    this.status = ProviderStatus.idle,
    this.error,
  });
  @override
  List<Object?> get props => [status];
}
