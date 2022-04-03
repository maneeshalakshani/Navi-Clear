import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  bool pwIconVisible = true;
  bool ConfirmpwIconVisible = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 24, 53),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.03, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                width: width,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //============== BACK BUTTON =============================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //============== IMAGE =====================================
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/SignUp.jpg'),
                        radius: 80.0,
                        backgroundColor: Colors.white,
                      ),

                      //============== SPACE BETWEEN IMAGE AND FORM ==============
                      const SizedBox(
                        height: 40.0,
                      ),

                      //============== USERNAME FIELD ===============================
                      TextFormField(
                        controller: _username,
                        decoration: const InputDecoration(
                          hintText: 'Enter UserName',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(0, 80, 212, 80),
                                width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 142, 174, 229),
                                width: 3),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 3),
                          ),
                        ),
                      ),

                      //============== SPACE BETWEEN FORM FIELDS =================
                      const SizedBox(
                        height: 20.0,
                      ),

                      //============== EMAIL FIELD ===============================
                      TextFormField(
                        controller: _email,
                        decoration: const InputDecoration(
                          hintText: 'Enter Email',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(0, 80, 212, 80),
                                width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 142, 174, 229),
                                width: 3),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 3),
                          ),
                        ),
                      ),

                      //============== SPACE BETWEEN FORM FIELDS =================
                      const SizedBox(
                        height: 20.0,
                      ),

                      //============== PASSWORD FIELD ============================
                      TextFormField(
                        controller: _password,
                        obscureText: pwIconVisible,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(0, 80, 212, 80),
                                width: 3),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 142, 174, 229),
                                width: 3),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 3),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              if (pwIconVisible == true) {
                                setState(() {
                                  pwIconVisible = false;
                                });
                              } else {
                                setState(() {
                                  pwIconVisible = true;
                                });
                              }
                            },
                            child: Icon(
                              pwIconVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),

                      //============== SPACE BETWEEN FORM FIELDS =================
                      const SizedBox(
                        height: 20.0,
                      ),

                      //============== CONFIRM PASSWORD FIELD ============================
                      TextFormField(
                        controller: _confirmPassword,
                        obscureText: ConfirmpwIconVisible,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(0, 80, 212, 80),
                                width: 3),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 142, 174, 229),
                                width: 3),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 3),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              if (ConfirmpwIconVisible == true) {
                                setState(() {
                                  ConfirmpwIconVisible = false;
                                });
                              } else {
                                setState(() {
                                  ConfirmpwIconVisible = true;
                                });
                              }
                            },
                            child: Icon(
                              ConfirmpwIconVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),

                      //============== SPACE BETWEEN FORM FIELDS =================
                      const SizedBox(
                        height: 30.0,
                      ),

                      //============== LOGIN WITH EMAIL BUTTON ===================
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 70.0,
                            vertical: 13.0,
                          )),
                        ),
                        child: Text(
                          'Login With Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
