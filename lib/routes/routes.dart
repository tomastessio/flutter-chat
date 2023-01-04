import 'package:chat/pages/pages.dart';
import 'package:flutter/material.dart';



final Map<String, Widget Function(BuildContext)> appRoutes = {

  'login'    : (_) => LoginPage(),
  'chat'     : (_) => ChatPage(),
  'register' : (_) => RegisterPage(),
  'loading'  : (_) => LoadingPage(),
  'usuarios' : (_) => UsuariosPage()

};