import 'package:flutter/material.dart';
import 'package:newflutter/homepage.dart';

 
 class LoginPage extends StatefulWidget{ 
    @override
  State<StatefulWidget> createState() =>new _LoginPageState();  
 }
 class _LoginPageState extends State<LoginPage >{ 

   final formKey=new GlobalKey<FormState>();
  
  String _email;
  
  String _password;

  bool validateAndSave(){
     final form=formKey.currentState;
   if (form.validate()){
     form.save(); 
     return  true;
   } else  {
     return false;
   }
  }
   @override
  Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar ( 
        
           
           title: new Text('LOGIN PAGE'),
         
       ),
       body :new Container(
         padding: EdgeInsets.all(20),
         child :new  Form(
           key : formKey,
            child: new Column( 
              crossAxisAlignment: CrossAxisAlignment.stretch ,
             children: <Widget>[
               new TextFormField(
                 decoration : new InputDecoration(labelText: 'email'),
                 validator:(value) => value.isEmpty ? 'Email cant be empty':null,
                 onSaved: (value) => _email= value ,

               ),
               new TextFormField(
                 decoration : new InputDecoration(labelText: 'password '),
               obscureText: true,
               validator: (value) => value.isEmpty ? 'password  cant be empty':null,
               onSaved: (value) => _password= value ,
               ),  
               new RaisedButton(
                 child: new Text('LOGIN',style: new TextStyle( fontSize :20.0) ,),
                  onPressed: validateAndSave,
               ),
               new FlatButton(
                 child: new Text('SIGN UP',style: new TextStyle( fontSize :15.0) ,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
               )

             ], 

            ),
            )
       )
     );
  }
 }
 