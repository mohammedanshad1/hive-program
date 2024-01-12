import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homeee extends StatelessWidget{
  final String email;
  const Homeee({Key? key,required this.email}); //constructor
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("Home Screen"),),


      body: Column(children: [
        Center(child: Text("Welcome $email",style: TextStyle(color: Colors.pink,fontSize: 30),))
      ],),
    );
  }




}