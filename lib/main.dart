import 'package:flutter/material.dart';

import 'basic_screen.dart';

void main() => runApp(const StaticApp()); //main app run brain of app

class StaticApp extends StatelessWidget { //son class  StaticApp  StatelessWidget father class  
  const StaticApp({super.key});         // StaticApp akta constrauctor super er madhome father class er key k call kora hoice

  @override
  Widget build(BuildContext context) {   // build method MaterialApp k return kortese
    return MaterialApp(                   // MaterialApp property in..List gula call kora hoice
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const BasicScreen(),
    );
  }
}
