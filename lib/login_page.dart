import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/cutom_widget/bulb_icon.dart';
import 'package:quiz_app/cutom_widget/custom_text_feild.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/sign_up_page.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Global key for validating the form
  final _formKey = GlobalKey<FormState>();

  // Controllers for the text form fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: QuizTheme.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(screenSize.height * 0.03),
                      bottomRight: Radius.circular(screenSize.height * 0.03),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(screenSize.height * 0.05, 0,
                      screenSize.height * 0.05, screenSize.height * 0.02),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Expanded(
                            flex: 5,
                            child: SizedBox(),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.height * 0.045,
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: SizedBox(),
                          ),
                          BulbIcon(
                            color: Colors.white,
                            lineHeight: screenSize.height * 0.2,
                          ),
                          const Expanded(
                            flex: 2,
                            child: SizedBox(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextFormFeild(
                              title: "E Mail",
                              controller: _emailController,
                            ),
                            const SizedBox(),
                            CustomTextFormFeild(
                              title: "Password",
                              controller: _passwordController,
                              obscureText: true,
                            )
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Forget Password?",
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: screenSize.height * 0.07,
                  width: screenSize.width * 0.85,
                  child: TextButton(
                    onPressed: () {
                      _login();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: screenSize.height * 0.025,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
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
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/google.png"),
                          ),
                          shape: BoxShape.circle,
                        ),
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
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/facebook.png"),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ), //<a href="https://www.flaticon.com/free-icons/facebook" title="facebook icons">Facebook icons created by Freepik - Flaticon</a>
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: "Need an Account? ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                        text: "Sign Up",
                        style: const TextStyle(
                          color: QuizTheme.primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
