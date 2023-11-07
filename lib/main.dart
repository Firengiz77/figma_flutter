import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/first_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
     
        
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        )
            ),
  
        home: FirstPage());
  }
}
