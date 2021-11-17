import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/views/home/home_page.dart';

void main(List<String> args) {
  runApp(const AppWidget());
}

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
