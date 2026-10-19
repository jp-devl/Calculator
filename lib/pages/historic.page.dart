
import 'package:flutter/material.dart';

class HistoricPage extends StatelessWidget {
  final List<String> history;

  const HistoricPage({
    super.key,
    required this.history,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico'),
        backgroundColor: const Color(0xFFAEC5FF),
        centerTitle: true,
      ),
      body: history.isEmpty
          ? const Center(
              child: Text(
                'Nenhum cálculo realizado',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            )
          : ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      history[index],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
