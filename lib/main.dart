import 'package:flutter/material.dart';
import 'package:klikik_app/ui/beranda.dart';
import 'package:klikik_app/helpers/user_helpers.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);
  runApp(MaterialApp());
}

