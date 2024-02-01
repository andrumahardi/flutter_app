import 'package:flutter/material.dart';
import 'package:flutter_app/components/scaffold_appbar.dart';
import 'package:flutter_app/views/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: scaffoldAppBar('Home', Icons.home),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 32, right: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Text('This is Home')],
                  ))),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.shade200,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ]),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    IconButton(
                      isSelected: true,
                      icon: const Icon(Icons.home),
                      onPressed: () {},
                    ),
                    const Text('Home')
                  ]),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.person_outlined),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()),
                          );
                        },
                      ),
                      const Text('Profile')
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
