import 'package:amayze/screens/sign_in_screen.dart';
import 'package:amayze/utils/color_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Amayze());
}

class Amayze extends StatelessWidget {
  const Amayze({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Amayze",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const SignInScreen());
  }
}
