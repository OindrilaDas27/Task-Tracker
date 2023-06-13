import 'package:flutter/material.dart';
import 'package:task_tracker/reusable_widgets/FormInputCard.dart';
import 'package:task_tracker/constants.dart';
import 'package:task_tracker/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height - 70,
      backgroundColor: bg,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create account',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: primary_theme,
                ),
              ),
              Divider(height: 30.0,),
              InputFormCard(text: 'Enter name'),
              InputFormCard(text: 'Enter email'),
              InputFormCard(text: 'Enter password'),
              InputFormCard(text: 'Confirm password'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login here',
                        style: TextStyle(
                          color: primary_theme,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(height: 20.0,),
              InputButton(

                text2: 'Sign Up', onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
