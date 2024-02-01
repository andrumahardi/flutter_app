import 'package:flutter/material.dart';
import 'package:flutter_app/views/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(
    ProviderScope(
      child: MaterialApp(
          title: 'Flutter Playground',
          home: const HomePage(),
          theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.lightBlue,
              ),
              textTheme: GoogleFonts.montserratTextTheme())),
    ),
  );
}
