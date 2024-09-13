import 'package:mysql1/mysql1.dart';
import 'dart:async';

Future suzidb() async{
  var wewe = await ConnectionSettings(
    host: 'localhost',
    port: 3306,
    db: 'laizer',
    user: 'root'
  );
  var kabati = MySqlConnection.connect(wewe);
  return kabati;
}