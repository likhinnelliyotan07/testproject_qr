import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project_qr/domain/app_routes.dart' as AppRoutes;
import 'package:test_project_qr/domain/configurations.dart';
import 'package:test_project_qr/domain/providers.dart';

Future<void> main() async {
  await Configurations.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: providers,
     child: MaterialApp(
       title: 'Qr scanner',
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
       initialRoute: AppRoutes.initialRoute,
       onGenerateRoute: AppRoutes.generateRoute,
     ),
    );
  }
}

