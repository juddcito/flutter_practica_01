

import 'package:flutter/material.dart';
import 'package:practica_01/src/user_data.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 01',
      home: Center(
        child: DatosUsuarios(),
      ),
    );
  }
}

