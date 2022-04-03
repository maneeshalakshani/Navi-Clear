import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    giveLoadingTime();
  }

  giveLoadingTime() {
    var duration = Duration(seconds: 2);
    Future.delayed(duration, () {
      Navigator.pushReplacementNamed(context, '/selectOption');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 157, 227),
      body: Center(),
    );
  }
}
