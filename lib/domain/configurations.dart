import 'package:firebase_core/firebase_core.dart';
import 'package:test_project_qr/domain/locator.dart';

class Configurations {
  static Future<void> init() async {
    await Firebase.initializeApp();
    Locator.setup();
    return;
  }
}
