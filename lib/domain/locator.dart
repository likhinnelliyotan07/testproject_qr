import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:test_project_qr/data/repository/firebase_repo.dart';

class Locator {
  static GetIt _i = GetIt.instance;
  static GetIt get instance=> _i;
  Locator.setup(){
    _i.registerSingleton<FirebaseRepo>(FirebaseRepo(
      firestore: FirebaseFirestore.instance
    ));
    
  }
}
