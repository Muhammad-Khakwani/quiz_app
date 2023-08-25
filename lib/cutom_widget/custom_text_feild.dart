import 'package:flutter/material.dart';

@immutable
class CustomTextFormFeild extends StatefulWidget {
  const CustomTextFormFeild(
      {super.key,
      required this.title,
      this.controller,
      this.obscureText = false});

  final String title;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool isPasswordFeild = false;
  bool isVisible = false;

  @override
  void initState() {
    isPasswordFeild = widget.obscureText;
    isVisible = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: const TextStyle(color: Colors.white),
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        height: screenSize.height * 0.08,
        child: TextFormField(
          cursorColor: const Color(0xFFFFB933),
          controller: widget.controller,
          obscureText: isVisible,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
              suffixIcon: isPasswordFeild
                  ? IconButton(
                      icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    )
                  : null),
          style: TextStyle(
              color: const Color(0xFFFFB933),
              fontSize: screenSize.height * 0.03),
        ),
      ),
    ]);
  }
}
