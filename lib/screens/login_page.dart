import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ypyprojeodevi/screens/signup.dart';

final _firebase = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';
  // AuthService authService = AuthService();
  bool isLoading = false;

  // signIn() async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       isLoading = true;
  //     });
  //     await authService.signInEmailAndPassword(email, password).then((value) {
  //       if (value != null) {
  //         setState(() {
  //           isLoading = false;
  //         });
  //         Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (context) => const HiddenDrawer()));
  //       }
  //     });
  //   }
  // }

  _signIn() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();

    final userCredentials = await _firebase.signInWithEmailAndPassword(
      email: _enteredEmail,
      password: _enteredPassword,
    );
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
                  onSaved: (value) {
                    _enteredEmail = value!;
                  },
                  validator: (val) {
                    if (val == null ||
                        val.trim().isEmpty ||
                        !val.contains('@')) {
                      return 'Please enter a valid email address!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  validator: (val) {
                    if (val == null || val.trim().length < 6) {
                      return 'Password must be at least 7 characters long!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: 'Password', labelText: 'Password'),
                  onSaved: (value) {
                    _enteredPassword = value!;
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: _signIn,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple,
                    ),
                    child: const Text(
                      'Login',
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
                    const Text('Don\'t have an account?   '),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ));
                      },
                      child: const Text(
                        'Sign Up',
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
