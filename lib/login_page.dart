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
                              fontSize: screenSize.height * 0.05),
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
                        TextFormField(
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: screenSize.width * 0.05),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Sign In")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons
                          .facebook)), //<a href="https://www.flaticon.com/free-icons/google" title="google icons">Google icons created by Freepik - Flaticon</a>
                  IconButton(onPressed: () {}, icon: Icon(Icons.facebook))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
