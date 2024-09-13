import 'dart:io';
import 'package:wewe/database.dart';

void register()async{
  var dbconnection = await database();

  stdout.write('enter your first name\n');
  var Fname = stdin.readLineSync();

  stdout.write('enter your midle name\n'); 
  var Mname = stdin.readLineSync();

  stdout.write('enter your lastname\n');
  var Lname = stdin.readLineSync();

  stdout.write('what is your gender?\n');
  var Gender = stdin.readLineSync();

  stdout.write('enter your username\n');
  var uname = stdin.readLineSync();

  stdout.write('enter your examination number\n');
  var roleNumber = stdin.readLineSync();
  
  stdout.write('enter your primary school name\n');
  var pschool = stdin.readLineSync();

  stdout.write('enter your secondary school name\n');
  var sschool = stdin.readLineSync();

  stdout.write('enter your collage name\n');
  var cName = stdin.readLineSync();


  var userdetails = await dbconnection.query('insert into bakuli values(?,?,?,?,?)',[Fname,Mname,Lname,Gender,uname]);
  var accademicdetails = await dbconnection.query('insert into kijiko values(?,?,?,?,?,?,?,?)',[Fname,Mname,Lname,Gender,roleNumber,pschool,sschool,cName]);

  await dbconnection.close();
}