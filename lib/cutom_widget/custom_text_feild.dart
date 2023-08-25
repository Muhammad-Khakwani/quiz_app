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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: const TextStyle(color: Colors.white),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
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
          style: const TextStyle(
            color: Color(0xFFFFB933),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return "Please Enter a Value";
            }
            return null;
          },
        ),
      ),
    ]);
  }
}
