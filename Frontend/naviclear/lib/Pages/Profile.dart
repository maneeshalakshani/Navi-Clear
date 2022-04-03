import 'package:flutter/material.dart';
import 'package:naviclear/Model/User.dart';
import 'package:naviclear/NavBar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User users = User(name: 'Maneesha Lakshani', username: 'maneesha', bio: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/log.png'),
                  radius: 60.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
