import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:test_project_qr/data/models/error_model.dart';
import 'package:test_project_qr/data/models/user_model.dart';
import 'package:test_project_qr/data/services/firebase_services.dart';

class FirebaseRepo {
  FirebaseRepo({required this.firestore}) {
    _firebaseServices = FirebaseServices(firestore: firestore);
  }
  late final FirebaseFirestore firestore;
  late final FirebaseServices _firebaseServices;
  Future<Either<ErrorModel, UserModel>> getUser(String uid) async =>
      _firebaseServices.getUser(uid);
}
