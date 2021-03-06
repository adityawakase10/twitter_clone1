import 'package:flutter/material.dart';
import 'package:twitter_clone1/services/auth.dart';


class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  

  final AuthService _authService = AuthService();
  String email= '';
  String password= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         elevation: 8,
         title: Text(" Sign Up"),
       ),
       body: Container(
         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
         child: new Form(
           child: Column(
             children: [
               TextFormField(
               onChanged: (val) => setState((){
                 email = val;
               }),
             ),
              TextFormField(
               onChanged: (val) => setState((){
                 password = val;
               }),
             ),
             // ignore: deprecated_member_use
             RaisedButton(
               child: Text("SignUp"),
               onPressed:() async => {_authService.signUp(email, password)}),
               // ignore: deprecated_member_use
               RaisedButton(
               child: Text("SignIn"),
               onPressed:() async => {_authService.signIn(email, password)})
             ],
             )),
             
         ),
    );
  }
}