import 'package:flutter/material.dart';
import 'package:twitter_clone1/services/auth.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {Navigator.pushNamed(context, '/add');} ,
        child:Icon(Icons.add) ,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(title: Text("Profile"),
              onTap: (){
                Navigator.pushNamed(context, '/profile');
              }),
              ListTile(title: Text("LogOut"),
              onTap: () async {
                 _authService.signOut();
              })
            ],
          ) ,),
      );
  }
}