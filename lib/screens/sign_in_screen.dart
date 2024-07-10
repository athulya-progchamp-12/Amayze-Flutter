import 'package:amayze/screens/sign_up_screen.dart';
import 'package:amayze/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:amayze/widget/custom_main_button.dart';
import 'package:amayze/widget/text_field_widget.dart';
import 'package:amayze/utils/utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  amazonLogo, //Replace with your Amazon logo URL
                  height: MediaQuery.of(context).size.height * 0.20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.39,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 45, 12, 41),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign-In",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      TextFieldWidget(
                        title: "Email",
                        controller: emailcontroller,
                        obscureText: false,
                        hintText: "Enter your email",
                      ),
                      TextFieldWidget(
                        title: "Password",
                        controller: passwordcontroller,
                        obscureText: false,
                        hintText: "Enter your Password",
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CustomMainButton(
                          child: const Text(
                            "Sign-In",
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 0.6,
                            ),
                          ),
                          color: Color.fromARGB(255, 152, 94, 142),
                          isLoading: false,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "New to Amayze?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Add spacing between the containers
                CustomMainButton(
                    child: Text(
                      "Create an Amayze Account",
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.6,
                      ),
                    ),
                    color: const Color.fromARGB(255, 212, 118, 149),
                    isLoading: false,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUpScreen();
                      }));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
