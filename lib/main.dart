import 'package:flutter/material.dart';
import 'package:flutter_multiprovider/providers/CountProvider.dart';
import 'package:flutter_multiprovider/providers/SliderProvider.dart';
import 'package:flutter_multiprovider/screens/Homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_) => CountProvider()),
      ChangeNotifierProvider(create: (_) => SliderProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Homepage())
      );
  }
}
