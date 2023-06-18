import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

// void changePassword(String newPassword) async {
//     if (newPassword.isEmpty) {
//       showDialog(
//         context: context,
//         builder: (context) =>
//             const AlertDialog(content: Text('It can\'t be a password!')),
//       );
//     } else {
//       await user.updatePassword(newPassword);
//       if (context.mounted) {
//         showDialog(
//           context: context,
//           builder: (context) =>
//               const AlertDialog(content: Text('Password changed.')),
//         );
//       }
//       Navigator.pop(context);
//     }
//   }

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  void passwordReset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset The Password'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: passwordReset,
                child: const Text('Reset'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
