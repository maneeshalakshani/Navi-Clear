import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
    var duration = Duration(seconds: 4);
    Future.delayed(duration, () {
      Navigator.pushReplacementNamed(context, '/selectOption');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 99, 141),
      body: Center(
        child: SpinKitPouringHourGlass(
          color: Colors.white,
        ),
      ),
    );
  }
}
