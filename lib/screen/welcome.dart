import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_register_login/screen/home.dart';

class WelcomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ยินดีต้อนรับ'),
      ),
      body: Column(
        children: [
          const Text('auth.currentUser.email'),
          ElevatedButton(
              onPressed: () {
                auth.signOut().then((value) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                });
              },
              child: const Text('ออกจากระบบ'))
        ],
      ),
    );
  }
}
