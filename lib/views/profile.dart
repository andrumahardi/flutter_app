import 'package:flutter/material.dart';
import 'package:flutter_app/components/scaffold_appbar.dart';
import 'package:flutter_app/models/counter_model.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, counterNotifier, child) {
        return Scaffold(
          appBar: scaffoldAppBar('Profile', Icons.person),
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Count Number: ${counterNotifier.countNum}'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('To Home'),
                  )
                ]),
          ),
        );
      },
    );
  }
}
