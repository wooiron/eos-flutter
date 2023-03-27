import 'package:eos_chatting/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignUpScreen = true;
  List<String> formList = [];

  @override
  void initState() {
    super.initState();
  }

  void handleTap(isSignUp) {
    setState(() {
      isSignUpScreen = isSignUp;
      if (isSignUp) {
        formList = ['email', 'password'];
      } else {
        formList = ['username', 'email', 'password'];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: ExactAssetImage('background.png'),
                      fit: BoxFit.fill,
                    )),
                    child: Container(
                      padding: const EdgeInsets.only(top: 90, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Welcome',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white)),
                            TextSpan(
                                text: isSignUpScreen ? ' to EOS chat' : ' back',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ])),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            isSignUpScreen
                                ? 'Signup to continue'
                                : 'Signin to continue',
                            style: TextStyle(
                                letterSpacing: 1.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ))),
            Positioned(
                top: 150,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5)
                      ]),
                  height: !isSignUpScreen ? 280.0 : 310,
                  width: MediaQuery.of(context).size.width - 40,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              handleTap(false);
                            },
                            child: Column(
                              children: [
                                Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: !isSignUpScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1),
                                ),
                                !isSignUpScreen
                                    ? Container(
                                        height: 2,
                                        width: 55,
                                        color: Colors.green,
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              handleTap(true);
                            },
                            child: Column(
                              children: [
                                Text(
                                  'SIGNUP',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignUpScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1),
                                ),
                                isSignUpScreen
                                    ? Container(
                                        height: 2,
                                        width: 55,
                                        color: Colors.green,
                                      )
                                    : Container()
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Form(
                          child: Column(
                            children: !isSignUpScreen
                                ? [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Palette.iconColor,
                                          ),
                                          hintText: "email",
                                          hintStyle: TextStyle(
                                              color: Palette.iconColor),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Palette.textColor1),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                                BorderRadius.circular(35),
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: Palette.iconColor,
                                          ),
                                          hintText: "password",
                                          hintStyle: TextStyle(
                                              color: Palette.iconColor),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Palette.textColor1),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                                BorderRadius.circular(35),
                                          )),
                                    ),
                                  ]
                                : [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Palette.iconColor,
                                          ),
                                          hintText: "User name",
                                          hintStyle: TextStyle(
                                              color: Palette.iconColor),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Palette.textColor1),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                                BorderRadius.circular(35),
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Palette.iconColor,
                                          ),
                                          hintText: "email",
                                          hintStyle: TextStyle(
                                              color: Palette.iconColor),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Palette.textColor1),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                                BorderRadius.circular(35),
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: Palette.iconColor,
                                          ),
                                          hintText: "password",
                                          hintStyle: TextStyle(
                                              color: Palette.iconColor),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Palette.textColor1),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                                BorderRadius.circular(35),
                                          )),
                                    )
                                  ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                top: !isSignUpScreen ? 390 : 430,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                      padding: EdgeInsets.all(15),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.lightGreen, Colors.green],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ),
                      )),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height - 125,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Text(
                      isSignUpScreen ? 'or Signup with' : 'or Signin with',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Palette.googleColor,
                          minimumSize: Size(155, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      label: Text('Google'),
                      icon: Icon(
                        Icons.add,
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
