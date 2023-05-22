import 'dart:io';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:teste_pi/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teste_pi/firebase_options.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagens',
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home: HomePage(),
    );
  }
}





