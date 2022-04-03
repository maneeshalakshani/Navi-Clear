import 'package:flutter/material.dart';
import 'package:naviclear/Pages/MainPage.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Color.fromARGB(255, 3, 37, 65),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/main');
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/SignIn');
            },
            icon: Icon(
              Icons.note,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/SignIn');
            },
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
