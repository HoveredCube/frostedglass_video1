// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'frostedglass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: const FrostedGlassBox(
          theWidth: 200.0,
          theHeight: 200.0,
          theChild: Text(
            'Hello world',
            style: TextStyle(color: Colors.white54, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
