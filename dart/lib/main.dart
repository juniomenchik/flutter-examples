// ignore_for_file: library_private_types_in_public_api, unused_local_variable, prefer_final_fields, unused_field, unnecessary_new

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Screen',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _numAleatorio = 0;

  void onPressed() {
    setState(() {
      _numAleatorio = new Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pressione o botao para gerar um numero aleatorio'),
              Text('$_numAleatorio'),
              FloatingActionButton(onPressed: onPressed),
            ],
          ), 
        ),
      ),
    );
  }
}
