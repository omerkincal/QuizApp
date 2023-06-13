// import 'dart:io';
// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../services/auth.dart';
import '/widgets/quizappbar_text.dart';
// import 'package:ypyprojeodevi/widgets/user_image_picker.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  ///
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  var _enteredEmail = '';
  var _enteredPassword = '';
  // File? _selectedImage;

  ///
  final Auth authService = Auth();

  void _signUp() async {
    final isValid = _formKey.currentState!.validate();

    /// Doğrulamayı geçemezse showSnackBar için uyarı göster
    if (!isValid) {
      ///
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Form Alanlarını Kontnrol Edin',
          ),
        ),
      );
    }

    /// Doğrulamayı Geçerse
    validateForm();
  }

  void validateForm() async {
    _formKey.currentState!.save();
    try {
      ///
      authService.signUpwithEmailAndPassword(_enteredEmail, _enteredPassword);

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('You have signed up.')));
      // final storegeRef = FirebaseStorage.instance
      //     .ref()
      //     .child('user_image')
      //     .child('${userCredentials.user!.uid}.jpg');
      // await storegeRef.putFile(_selectedImage!);
      // final imageUrl = await storegeRef.getDownloadURL();

      /// [LogInPage] sayfasına Git
      // Navigator.of(context).push(
      //   MaterialPageRoute(builder: (_) => const LoginPage()),
      // );
    } on FirebaseAuthException catch (error) {
      if (error.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              error.message ?? 'Authentication failed.',
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: appBar(
          context,
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 200,
                  color: Colors.deepPurple,
                ),
                const SizedBox(height: 50),
                // UserImagePicker(
                //   onPickImage: (pickedImage) {
                //     _selectedImage = pickedImage;
                //   },
                // ),
                // const SizedBox(height: 20),
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
                    hintText: 'Password',
                    labelText: 'Password',
                  ),
                  onSaved: (value) {
                    _enteredPassword = value!;
                  },
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.deepPurple.shade300,
                    ),
                    onPressed: _signUp,
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
                          ),
                        );
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
