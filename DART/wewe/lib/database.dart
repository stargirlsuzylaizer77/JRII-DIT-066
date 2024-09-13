import 'dart:async';
import 'package:mysql1/mysql1.dart';

Future database() async{
  var dbconnection = await ConnectionSettings(
    host: "localhost",
    db: "PC",
    port: 3306,
    user: "root"
  );
  var Connection = await MySqlConnection.connect(dbconnection);
  return Connection;
}