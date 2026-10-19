
import 'package:flutter/material.dart';
import 'pages/calculator.page.dart';
import 'pages/historic.page.dart';

void main() {
  runApp(const MinhaCalculadora());
}

class MinhaCalculadora extends StatefulWidget {
  const MinhaCalculadora({super.key});

  @override
  State<MinhaCalculadora> createState() => _MinhaCalculadoraState();
}

class _MinhaCalculadoraState extends State<MinhaCalculadora> {
  final List<String> historico = [];

  void adicionarHistorico(String calculo) {
    setState(() {
      historico.insert(0, calculo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F8FC),
      ),
      home: Builder(
        builder: (context) => CalculatorPage(
          onCalculation: adicionarHistorico,
          onOpenHistory: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HistoricPage(
                  history: List<String>.from(historico),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
