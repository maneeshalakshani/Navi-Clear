import 'package:flutter/material.dart';
import 'package:naviclear/NavBar.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'school Map',
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 38, 84, 122),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
