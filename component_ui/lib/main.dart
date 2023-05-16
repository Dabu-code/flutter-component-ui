import 'package:component_ui/src/screens/home/home_screen.dart';
import 'package:component_ui/src/widgets/buttons/buttons.dart';
import 'package:component_ui/src/widgets/inputs/inputs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'buttons': (BuildContext context) => const Buttons(),
        'home': (BuildContext context) => const HomeScreen(),
        'inputs': (BuildContext context) => const Inputs(),
        //'signup': (BuildContext context) =>  SignupScreen(),
        
      },
    );
  }
}

