import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imc_calculator/src/views/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
