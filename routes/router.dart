import 'package:flutter/material.dart';
import 'package:loginpantallas/routes/my_routes.dart';
import 'package:loginpantallas/screens/loggin_screen.dart';
import 'package:loginpantallas/screens/registro.dart';
import 'package:loginpantallas/screens/home.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  Myroutes.loggin.name: (context) => LoginPage(),
  Myroutes.registro.name: (context) => RegistrationForm(),
  Myroutes.home.name: (context) => HomeScreen(userEmail: 'rjorellanap@unah.hn'),
};
