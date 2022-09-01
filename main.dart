import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myshop/windows.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        
        backgroundColor: Colors.blueGrey[700],
        title: const Text("My Shop",
            style: TextStyle(color: Colors.white, fontSize: 15)),
            
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child:(
        
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
           
            Window('Shoes'),
            
            Window('T-Shirt'),
            Window('Pants'),
          ],
        )),
      ),
    );
  }
}