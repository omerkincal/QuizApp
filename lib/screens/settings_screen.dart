import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'reset_password.dart';

final user = FirebaseAuth.instance.currentUser!;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 70,
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 40,
                    color: Theme.of(context).colorScheme.background,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    user.email!,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 2,
                color: Theme.of(context).colorScheme.background,
              ),
              ListTile(
                title: const Text('Change the password'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ForgotPasswordPage(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text('Change the theme'),
                subtitle: Text(
                  '\n (This is automatically connected to your system. \n If you want to switch to dark mode, select it manually in the settings of your device.)',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
