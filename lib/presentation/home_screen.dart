import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_project_qr/data/models/user_model.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  final UserModel userModel; //UserModel
  HomeScreen({required this.userModel});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          
          Row(
            children: [
              Column(
                children: [
                  Text(userModel.displayName??""),
                  Text(userModel.email??""),
                ],
              ),
              CachedNetworkImage(imageUrl: userModel.profilePic??"",width: 100,height: 100,),
            ],
          ),

        ],
      ));
  }
}
