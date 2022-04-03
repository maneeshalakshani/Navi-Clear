import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:naviclear/Pages/LoadingPage.dart';
import 'package:naviclear/Pages/SelectOptionPage.dart';
import 'package:naviclear/Pages/SignIn.dart';
import 'package:naviclear/Pages/SignUp.dart';

Future main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/selectOption': (context) => SelectOption(),
      '/SignIn': (context) => SignIn(),
      '/SignUp': (context) => SignUp(),
    },
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
