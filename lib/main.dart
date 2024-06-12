import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleshopping/home_page.dart';
import 'package:sampleshopping/intro_page.dart';
import 'package:sampleshopping/model/cart_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
