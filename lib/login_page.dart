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
                        bottomLeft: Radius.circular(screenSize.width * 0.05),
                        bottomRight: Radius.circular(screenSize.width * 0.05))),
                padding: EdgeInsets.fromLTRB(screenSize.width * 0.1, 0,
                    screenSize.width * 0.1, screenSize.width * 0.1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.08),
                        ),
                        BulbIcon(
                          backgroundColor: Colors.amber,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E Mail",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextFormField(
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: screenSize.width * 0.05),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(
                              screenSize.width * 0.05,
                              0,
                              screenSize.width * 0.05,
                              0,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFCF0C9)),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenSize.width * 0.03))),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Sign In")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
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
