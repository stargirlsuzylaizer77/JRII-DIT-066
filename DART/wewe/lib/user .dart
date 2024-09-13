import 'dart:io';
import 'suziedb.dart';
import 'dart:async';

void details() async{
  var connection = await suzidb();

  stdout.write('enter your first name');
  var papi= stdin.readLineSync();

  stdout.write('enter your second name');
  var liz = stdin.readLineSync();

  stdout.write('enter your last name');
  var mama = stdin.readLineSync();

  print('enter your academic details/n');

  stdout.write('which school are you study');
  var primary = stdin.readLineSync();

  stdout.write('which secondary school are you study');
  var secondary = stdin.readLineSync();

  stdout.write('enter you are user name');
  var user = stdin.readLineSync();

  stdout.write('enter your password');
  var password = stdin.readLineSync();

  var mkulima = await connection.query('insert into personaldetails values(?,?,?,?,?)',[papi,liz,mama,user,password]);
  var jembe = await connection.query('insert into academic values(?,?,?,?,?)',[papi,liz,mama,primary,secondary]);
  


  
  
  





  await connection.close();

}