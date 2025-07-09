import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project_qr/data/bloc/user/user_bloc.dart';

final List<BlocProvider> providers = [
  BlocProvider<UserBloc>(create: (_) => UserBloc(),)
];