import 'package:aplikasi_makanan/providers/resep_provider.dart';
import 'package:aplikasi_makanan/screens/resep_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ResepProvider>(
          create: (context) => ResepProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Aplikasi Resep Makanan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ResepScreen(),
      ),
    );
  }
}
