import 'package:flutter/material.dart';
import 'package:flutter_app/models/counter_model.dart';
import 'package:flutter_app/views/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MaterialApp(
        title: 'Flutter Playground',
        home: HomePage(),
      ),
    ),
  );
}