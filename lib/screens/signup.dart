import 'package:flutter/material.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  late String name, email, password;
  signUp() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(fontSize: 34),
                children: [
                  TextSpan(
                    text: 'Quiz',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'App',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              )),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 200,
                  color: Colors.deepPurple,
                ),
                const SizedBox(height: 50),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? 'Enter Your Name' : null;
                  },
                  decoration: const InputDecoration(hintText: 'Name'),
                  onChanged: (value) {
                    name = value;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? 'Enter Email' : null;
                  },
                  decoration: const InputDecoration(hintText: 'Email'),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? 'Enter Password' : null;
                  },
                  decoration: const InputDecoration(hintText: 'Password'),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    signUp();
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?  '),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
