import 'dart:io';
import 'register.dart';
import 'database.dart';

Future login() async{
  var loginconnection = await database();

  stdout.write("username\n");
  var username = stdin.readLineSync();

  var userdetails = await loginconnection.query('select uname from bakuli');
 
  var userdetailslist = [];
  for (var userdetails2 in userdetails){
    userdetailslist.add(userdetails2.first.toString());
  }

  if (userdetailslist.contains(username)){
    print('wengine tuna usafiri wengine wana miguu');
  }
  else{
    print('wrong username or password');
  }

  await loginconnection.close();

}