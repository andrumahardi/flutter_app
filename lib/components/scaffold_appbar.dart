import 'package:flutter/material.dart';

AppBar scaffoldAppBar(String title, IconData icon) {
  return AppBar(
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[Icon(icon), Text('  $title')],
    ),
    backgroundColor: Colors.blueGrey.shade50,
  );
}
