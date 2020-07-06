import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{ 
    @override
  State<StatefulWidget> createState() =>new _HomePagestate();
  
}
    
    class _HomePagestate extends State<HomePage> {
      
   final formKey=new GlobalKey<FormState>();
  
  String _email;
  
  String _password;

  String _name;

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
  Widget build (BuildContext context){
    return new Scaffold(
       appBar: new AppBar ( 
        
           
           title: new Text('SIGN UP'),
         
       ),
        body: Container(
         padding: EdgeInsets.all(20),
         child :SingleChildScrollView(
         child :new  Form(
           key : formKey,
            child: new Column( 
              crossAxisAlignment: CrossAxisAlignment.stretch ,
             children: <Widget>[
               new TextFormField(
                 decoration : new InputDecoration(labelText: 'Name'),
                 validator:(value) => value.isEmpty ? 'Name cant be empty':null,
                 onSaved: (value) => _name= value ,
                      

                    ),
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
               new TextFormField(
                 decoration : new InputDecoration(labelText: 'Re-enter password '),
               obscureText: true,
               validator: (value) => value.isEmpty ? 'password  cant be empty':null,
               onSaved: (value) => _password= value ,
               ),  
               new RaisedButton(
                 child: new Text('SIGN UP',style: new TextStyle( fontSize :20.0) ,),
                 onPressed: validateAndSave,
               ),
                  ]
                ),
              ),
            )
        
          
        ),
        );
      
    
    }
}

