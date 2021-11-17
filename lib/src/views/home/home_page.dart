import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imc_calculator/src/views/home/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora de IMC"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => controller.setHeight(value),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Altura'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  onChanged: (value) => controller.setWeight(value),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Peso')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: controller.calculateIMC,
                  child: const Text("Calcular")),
              const SizedBox(
                height: 10,
              ),
              AnimatedBuilder(
                  animation: controller.result,
                  builder: (context, child) {
                    return Text(controller.result.value);
                  })
            ],
          ),
        ));
  }
}
