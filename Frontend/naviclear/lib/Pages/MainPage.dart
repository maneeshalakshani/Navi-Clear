import 'package:flutter/material.dart';
import 'package:naviclear/Model/Notification.dart';
import 'package:naviclear/NavBar.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List<NotificationCard> notificationObj = [
    NotificationCard(
        imagePath: 'assets/SignUp.jpg', likeCounter: 0, likeIcon: false),
    NotificationCard(
        imagePath: 'assets/School.jpg', likeCounter: 0, likeIcon: false),
    NotificationCard(
        imagePath: 'assets/SignUp.jpg', likeCounter: 0, likeIcon: false),
    NotificationCard(
        imagePath: 'assets/School.jpg', likeCounter: 0, likeIcon: false),
    NotificationCard(
        imagePath: 'assets/SignUp.jpg', likeCounter: 0, likeIcon: false),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

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
      body: Column(
        children: [
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                itemCount: notificationObj.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 320,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 0),
                          blurRadius: 6.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 250,
                            child: Image.asset(
                              notificationObj[index].imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 260,
                          left: 20,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (notificationObj[index].likeIcon == true) {
                                    setState(() {
                                      notificationObj[index].likeIcon = false;
                                      notificationObj[index].likeCounter =
                                          notificationObj[index].likeCounter -
                                              1;
                                    });
                                  } else {
                                    setState(() {
                                      notificationObj[index].likeIcon = true;
                                      notificationObj[index].likeCounter =
                                          notificationObj[index].likeCounter +
                                              1;
                                    });
                                  }
                                },
                                icon: Icon(
                                  notificationObj[index].likeIcon
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: notificationObj[index].likeIcon
                                      ? Colors.red
                                      : Colors.black,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                notificationObj[index].likeCounter.toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
