

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone1/models/user.dart';
import 'package:twitter_clone1/screens/auth/signup.dart';
import 'package:twitter_clone1/screens/main/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    print(user);
    if (user == null){
     //show auth system route
     return SignUp();
    }
    //show main system route
    return Home();
  }
}