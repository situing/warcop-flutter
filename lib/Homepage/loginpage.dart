import 'package:flutter/material.dart';
import 'package:warcop/Homepage/desktop_body.dart';
import 'package:warcop/Homepage/mobile_body.dart';
import 'package:warcop/Homepage/responsive_home.dart';
import 'package:warcop/utils/login_button.dart';

import '../utils/user_textfield.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  //sign in method
  void signIn() async {
    //show loading circle
    showDialog(
      context: context, 
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );

    //try sign in
    {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ResponsiveHome(mobileBody: MobileBody(), desktopBody: DesktopBody())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
          
                const SizedBox(height: 50),
                //welcome message
                Text(
                  "welcome to Warcop",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 25),

                //user textfield
                UserTextField(
                  controller: usernameTextController,
                  hintText: 'Username',
                  obscureText: false,
                ),
          
                const SizedBox(height: 10),              
                //pass textfield
                UserTextField(
                  controller: passwordTextController, 
                  hintText: 'Password', 
                  obscureText: true
                ),
                const SizedBox(height: 10),

                //login button
                LoginButton(
                  onTap: signIn,
                  text: 'Sign In',
                ),
                const SizedBox(height: 25),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                )  
                  
              ]),
          ),
        ),
      ),
    );
  }
}