

import 'package:hive_flutter/hive_flutter.dart';
part 'usermodel.g.dart';


@HiveType(typeId: 1) //for securing give type id
class User {

  @HiveField(0) //for storing email in database
  final String email;

  @HiveField(1) //for storing password in database
  final String password;

  @HiveField(2)
  String? id;

  User({required this.email, required this.password}) {
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}
