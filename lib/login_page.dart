import 'package:flutter/material.dart';
import 'package:quiz_app/cutom_widget/bulb_icon.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Material(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(screenSize.height * 0.03),
                        bottomRight:
                            Radius.circular(screenSize.height * 0.03))),
                padding: EdgeInsets.fromLTRB(screenSize.height * 0.05, 0,
                    screenSize.height * 0.05, screenSize.height * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: SizedBox(),
                          flex: 5,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.height * 0.045),
                        ),
                        Expanded(
                          child: SizedBox(),
                          flex: 3,
                        ),
                        BulbIcon(
                          backgroundColor: Colors.amber,
                          color: Colors.white,
                          lineHeight: screenSize.height * 0.25,
                        ),
                        Expanded(flex: 2, child: SizedBox()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E Mail",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.08,
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: screenSize.height * 0.03),
                          ),
                        ),
                        Text(
                          "Password",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.08,
                          child: TextFormField(
                            obscureText: true,
                            autocorrect: false,
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: screenSize.height * 0.03),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: screenSize.height * 0.07,
                  width: screenSize.width * 0.85,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: screenSize.height * 0.025),
                      ))),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: screenSize.height * 0.04,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/google.png")),
                          shape: BoxShape.circle),
                    ), //<a href="https://www.flaticon.com/free-icons/google" title="google icons">Google icons created by Freepik - Flaticon</a>
                  ),
                  SizedBox(
                    width: screenSize.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: screenSize.height * 0.04,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/facebook.png")),
                          shape: BoxShape.circle),
                    ), //<a href="https://www.flaticon.com/free-icons/facebook" title="facebook icons">Facebook icons created by Freepik - Flaticon</a>
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
