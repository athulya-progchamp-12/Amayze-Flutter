import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  const TextFieldWidget(
      {required this.title,
      required this.controller,
      required this.obscureText,
      required this.hintText,
      super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late FocusNode focusNode;
  bool isInFocus = false;
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {});
        (() {
          isInFocus = true;
        });
      } else {
        setState(() {
          isInFocus = false;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            isInFocus
                ? BoxShadow(
                    color: Colors.purple.withOpacity(0.5),
                    blurRadius: 8,
                    spreadRadius: 2,
                  )
                : BoxShadow(
                    color: const Color.fromARGB(255, 204, 169, 210)
                        .withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                  )
          ]),
          child: TextField(
            focusNode: focusNode,
            obscureText: widget.obscureText,
            maxLines: 1,
            decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 214, 178, 190),
              filled: true,
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 58, 4, 70), width: 1),
              ),
            ),
          ),
        )
      ],
    );
  }
}
