import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:naviclear/Pages/SignIn.dart';

Future main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => SignIn(),
    },
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
