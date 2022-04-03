import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200.0,),
            ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.red[400],
                padding: EdgeInsets.symmetric(horizontal: 85.0, vertical: 15.0),
              ),
              icon: Icon(Icons.login),
              label: Text(
                'Login with Email',
              ),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.red[400],
                padding: EdgeInsets.symmetric(horizontal: 85.0, vertical: 15.0),
              ),
              icon: Icon(Icons.login),
              label: Text(
                'Facebook Login',
              ),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.red[400],
                padding: EdgeInsets.symmetric(horizontal: 85.0, vertical: 15.0),
              ),
              icon: Icon(Icons.login),
              label: Text(
                'Google Login',
              ),
            ),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}
