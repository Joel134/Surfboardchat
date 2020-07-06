import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

    @override
  Widget build(BuildContext context) {
     return new MaterialApp(
       title: 'flutter login',
       theme : new  ThemeData(
         primarySwatch : Colors.blue, 
       ),
       home: new LoginPage()
    
     );
  }
  
   Widget newbuild(BuildContext context) {
     return new MaterialApp(
       home: HomePage(),
     );
   }
}