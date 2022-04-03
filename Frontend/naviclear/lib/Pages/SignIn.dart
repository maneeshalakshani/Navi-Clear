import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  SuperTooltip? tooltip;

  Future<bool> _willPopCallBack() async {
    if (tooltip!.isOpen) {
      tooltip!.close();
      return false;
    }
    return true;
  }

  void onTap() {
    if (tooltip != null && tooltip!.isOpen) {
      tooltip!.close();
    }

    var renderBox = context.findRenderObject() as RenderBox;
    final overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox?;
    var targetGlobalCenter = renderBox
        .localToGlobal(renderBox.size.center(Offset.zero), ancestor: overlay);

    tooltip = SuperTooltip(
      popupDirection: TooltipDirection.left,
      top: 0,
      left: 10,
      bottom: 400,
      arrowTipDistance: 15.0,
      arrowBaseWidth: 40.0,
      arrowLength: 40.0,
      borderColor: Colors.orange,
      borderWidth: 2.0,
      //snapsFarAwayVertically: false,
      showCloseButton: ShowCloseButton.outside,
      closeButtonColor: Colors.white,
      //hasShadow: false,
      // touchThrougArea: new Rect.fromLTWH(targetGlobalCenter.dx - 100,
      //     targetGlobalCenter.dy - 100, 200.0, 160.0),
      // touchThroughAreaShape: ClipAreaShape.oval,
      content: new Material(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Text(
          'You must enter email in correct format and valid password in order to login',
          softWrap: true,
        ),
      )),
    );

    tooltip!.show(context);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 24, 53),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20.0, top: 10.0),
                    child: IconButton(
                      onPressed: onTap,
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      hoverColor: Colors.amber,
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(top: height * 0.05, bottom: height * 0.1),
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                width: width,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //============== IMAGE =====================================
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/log.png'),
                        radius: 90.0,
                        backgroundColor: Colors.white,
                      ),

                      //============== SPACE BETWEEN IMAGE AND FORM ==============
                      const SizedBox(
                        height: 40.0,
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
                        decoration: const InputDecoration(
                          hintText: 'Enter Password',
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
                        height: 40.0,
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
