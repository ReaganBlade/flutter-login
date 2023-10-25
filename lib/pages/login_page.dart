import 'package:flutter/material.dart';
import '../components/square_tile.dart';
import '../components/textfield.dart';
import '../components/button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //
  void singUserIn() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 50,),

              //Logo
              const Icon(Icons.lock,
              size: 100,),

              const SizedBox(height: 25,),

              //welcome
              Text(
                "Welcome Back, you've been missed!",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 50),


              //username
              MyTextField(
                controller: usernameController,
                hintText: 'UserName',
                obscureText: false,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in button
              MyButton(
                  onTap: (){},
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                    Text('or continue with'),

                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "lib/images/google.png"),

                  SizedBox(width: 20,),

                  SquareTile(imagePath: "lib/images/apple.png")
                ],
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member?",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),

                  const SizedBox(
                    width: 4,
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
