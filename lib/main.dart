import 'package:flutter/material.dart';
import 'add.dart';
import 'home.dart';
import 'update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
        '/': (context)=> HomePage(),
        '/add':(context) => AddUser(),
        '/update':(context) => UpdateDonor(),
      },
      initialRoute: '/',
    );
  }
}

