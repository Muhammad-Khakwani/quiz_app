import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/cutom_widget/bulb_icon.dart';
import 'package:quiz_app/cutom_widget/custom_text_feild.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/login_page.dart';
import 'package:quiz_app/theme/quiz_theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Global key for validating the form
  final _formKey = GlobalKey<FormState>();

  // Controllers for the text form fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isChecked = true;

  _signup() {
    if (_formKey.currentState!.validate()) {
      //Sign Up Logic Here
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
                            "Sign Up",
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
                              title: "Name",
                              controller: _nameController,
                            ),
                            CustomTextFormFeild(
                              title: "E Mail",
                              controller: _emailController,
                            ),
                            const SizedBox(),
                            CustomTextFormFeild(
                              title: "Password",
                              controller: _passwordController,
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        icon: Icon(
                          isChecked
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank,
                          color: QuizTheme.primaryColor,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "I Accept ",
                          children: [
                            TextSpan(
                              text: "Terms and Condition",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(
                                color: QuizTheme.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.07,
                  width: screenSize.width * 0.85,
                  child: TextButton(
                    onPressed: isChecked
                        ? () {
                            _signup();
                          }
                        : null,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: screenSize.height * 0.025),
                    ),
                  ),
                ),
                Text(
                  !isChecked ? "Accept Terms and Condition to Continue" : "",
                  style: const TextStyle(
                    color: QuizTheme.errorColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                    text: "Already a User? ",
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
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                        text: "Login",
                        style: const TextStyle(
                          color: QuizTheme.primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
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
