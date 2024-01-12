

import 'package:hive/hive.dart';

import '../model/usermodel.dart';



class DBFunction{
  DBFunction.internal();
  //if the class have one object we called instance
  //singleton class
  static DBFunction instance=DBFunction.internal(); //object creation

  factory DBFunction(){ // factory constructor
    return instance;
  }

  Future<void> userSignUp(User user) async{
   final db = await Hive.openBox<User>('users');
    db.put(user.id,user);
  }

  Future<List<User>> getUser() async{
    final db = await Hive.openBox<User>('users');
    return db.values.toList();
  }
}

