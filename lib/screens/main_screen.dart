import 'package:eos_chatting/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignUpScreen = true;

  @override
  void initState() {
    super.initState();
  }

  void handleTap(isSigunUp) {
    setState(() {
      isSignUpScreen = isSigunUp;
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
                              text: const TextSpan(children: [
                            TextSpan(
                                text: 'Welcome',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white)),
                            TextSpan(
                                text: ' to EOS chat',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ])),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Text(
                            'Signup to continue',
                            style: TextStyle(
                                letterSpacing: 1.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ))),
            Positioned(
                top: 150,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5)
                      ]),
                  height: 280.0,
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
                        child: Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person_2_outlined,
                                      color: Palette.iconColor,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Palette.textColor1),
                                      borderRadius: BorderRadius.circular(35),
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
