import 'package:flutter/material.dart';
import 'package:test_project_qr/data/models/user_model.dart';
import 'package:test_project_qr/presentation/auth/qr_scanner.dart';
import 'package:test_project_qr/presentation/common_widget/no_route_screen.dart';
import 'package:test_project_qr/presentation/home_screen.dart';

const String initialRoute = QrScannerScreen.routeName;
Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments as Map<String, dynamic>?;

  switch (settings.name) {
    case QrScannerScreen.routeName:
      return MaterialPageRoute(builder: (context) => const QrScannerScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context) =>  HomeScreen(
        userModel:args!["user"]! as UserModel ,
      ));
    default:
      return MaterialPageRoute(builder: (context) => const NoRouteScreen());
  }
}
