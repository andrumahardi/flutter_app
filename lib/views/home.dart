import 'package:flutter/material.dart';
import 'package:flutter_app/models/counter_model.dart';
import 'package:flutter_app/views/profile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                model.add();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: Text('To Profile ${model.countNum}'),
            ),
          ),
        );
      },
    );
  }
}
