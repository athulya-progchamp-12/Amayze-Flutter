import 'package:amayze/utils/constants.dart';
import 'package:amayze/widget/custom_main_button.dart';
import 'package:amayze/widget/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:amayze/utils/utils.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController addressController =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  
  

  @override
  void dispose(){
    nameController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordcontroller.dispose();
  }
  
    
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
                        "Sign-Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      TextFieldWidget(
                        title: "Name",
                        controller: nameController,
                        obscureText: false,
                        hintText: "Enter your Name",
                      ),
                      TextFieldWidget(
                        title: "Email",
                        controller: emailController,
                        obscureText: false,
                        hintText: "Enter your email",
                      ),
                      TextFieldWidget(
                        title: "Address",
                        controller: addressController,
                        obscureText: false,
                        hintText: "Enter your Address",
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
                
                 // Add spacing between the containers
                CustomMainButton(
                  child: Text(
                    "Back",
                    style: const TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.6,
                    ),
                  ),
                  color: const Color.fromARGB(255, 212, 118, 149),
                  isLoading: false,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 