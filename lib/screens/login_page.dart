import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/screens/signup.dart';
// import 'package:ypyprojeodevi/services/auth.dart';
// import 'package:ypyprojeodevi/widgets/hidden_drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String email, password;
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
      body: isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
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
                        onTap: () {},
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
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
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
