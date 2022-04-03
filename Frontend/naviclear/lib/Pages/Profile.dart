import 'package:flutter/material.dart';
import 'package:naviclear/Model/User.dart';
import 'package:naviclear/NavBar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User user = User(name: 'Maneesha Lakshani', username: 'maneesha', bio: null);

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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 126,
                        width: 126,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        top: 3,
                        left: 3,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/School.jpg'),
                          radius: 60.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 220,
                        padding: EdgeInsets.only(left: 30),
                        //color: Colors.red,
                        child: Text(
                          user.name,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: 220,
                        padding: EdgeInsets.only(left: 30),
                        //color: Colors.red,
                        child: Text(
                          "@${user.username}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
