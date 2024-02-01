import 'package:flutter/material.dart';
import 'package:flutter_app/components/scaffold_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: scaffoldAppBar('Profile', Icons.person),
      backgroundColor: Colors.white,
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is Profile'),
            ]),
      ),
    );
  }
}
