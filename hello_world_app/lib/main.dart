import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_functions_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //para quitar el logo de debug
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 29, 117, 216)
      ),
      home: const CounterFunctionsScreen()
    );
  }

}