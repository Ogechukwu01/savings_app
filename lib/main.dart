import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:savings_app/firebase_options.dart';
import 'features/home/pages/home_page.dart';


void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade100
      ),
      home: HomePage(),
    );
  }
}

