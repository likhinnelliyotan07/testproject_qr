import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project_qr/data/models/user_model.dart';
import 'package:test_project_qr/data/repository/firebase_repo.dart';
import 'package:test_project_qr/domain/locator.dart';
import 'package:test_project_qr/domain/utils/common_enum.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserModel? userModel;
  final _firebaseRepo = Locator.instance.get<FirebaseRepo>();
  UserBloc() : super(UserInitial()) {
    on<GetUserDataEvent>((event, emit) async {
      emit(GetUserDataState(status: ProviderStatus.loading));
      final result = await _firebaseRepo.getUser(event.userId);
      result.fold((error) {
        emit(GetUserDataState(status: ProviderStatus.error));
      }, (user) {
        userModel = user;
        emit(GetUserDataState(status: ProviderStatus.success, userModel: user));
      });
    });
  }
}
