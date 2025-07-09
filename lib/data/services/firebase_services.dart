import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:test_project_qr/data/models/error_model.dart';
import 'package:test_project_qr/data/models/user_model.dart';

class FirebaseServices {
  FirebaseServices({required this.firestore});
  final FirebaseFirestore firestore;
  Future<Either<ErrorModel,UserModel> > getUser(String uid) async{
    try {
      final user = await firestore.collection('users').doc(uid).get();
      return Right(UserModel.fromJson(user.data()!));
    } catch (e) {
      return Left(ErrorModel(error: e.toString()));
    }
  }
}