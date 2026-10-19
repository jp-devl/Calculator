
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  final ValueChanged<String> onCalculation;
  final VoidCallback onOpenHistory;

  const CalculatorPage({
    super.key,
    required this.onCalculation,
    required this.onOpenHistory,
  });

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String visor = '0';
  double? primeiroNumero;
  String? operacao;
  bool novoNumero = false;
  String expressao = '';

  void pressionar(String valor) {
    setState(() {
      if (valor == 'C') {
        visor = '0';
        primeiroNumero = null;
        operacao = null;
        novoNumero = false;
        expressao = '';
        return;
      }

      if (valor == '⌫') {
        if (novoNumero || visor == 'Erro') {
          visor = '0';
          novoNumero = false;
        } else if (visor.length > 1) {
          visor = visor.substring(0, visor.length - 1);
        } else {
          visor = '0';
        }
        return;
      }

      if (['+', '-', '×', '÷'].contains(valor)) {
        primeiroNumero = double.tryParse(visor.replaceAll(',', '.'));
        if (primeiroNumero == null) return;
        operacao = valor;
        expressao = '$visor $valor';
        novoNumero = true;
        return;
      }

      if (valor == '=') {
        final segundoNumero =
            double.tryParse(visor.replaceAll(',', '.'));

        if (primeiroNumero == null ||
            segundoNumero == null ||
            operacao == null) {
          return;
        }

        final a = primeiroNumero!;
        final b = segundoNumero!;
        late double resultado;

        switch (operacao) {
          case '+':
            resultado = a + b;
            break;
          case '-':
            resultado = a - b;
            break;
          case '×':
            resultado = a * b;
            break;
          case '÷':
            if (b == 0) {
              visor = 'Erro';
              primeiroNumero = null;
              operacao = null;
              novoNumero = true;
              return;
            }
            resultado = a / b;
            break;
          default:
            return;
        }

        final resultadoTexto = resultado.isFinite
            ? (resultado == resultado.truncateToDouble()
                ? resultado.toInt().toString()
                : resultado.toString())
            : 'Erro';

        final numeroA = a == a.truncateToDouble()
            ? a.toInt().toString()
            : a.toString();
        final numeroB = b == b.truncateToDouble()
            ? b.toInt().toString()
            : b.toString();

        widget.onCalculation(
          '$numeroA $operacao $numeroB = $resultadoTexto',
        );

        expressao = '$numeroA $operacao $numeroB =';
        visor = resultadoTexto;
        primeiroNumero = null;
        operacao = null;
        novoNumero = true;
        return;
      }

      if (valor == ',') {
        if (novoNumero || visor == 'Erro') {
          visor = '0,';
          novoNumero = false;
        } else if (!visor.contains(',')) {
          visor += ',';
        }
        return;
      }

      if (RegExp(r'^[0-9]$').hasMatch(valor)) {
        if (visor == 'Erro' || novoNumero || visor == '0') {
          visor = valor;
          novoNumero = false;
        } else {
          visor += valor;
        }
      }
    });
  }

  Widget botao(
    String texto, {
    Color cor = const Color(0xFFE0E0E3),
    Color corTexto = Colors.black,
    VoidCallback? aoPressionar,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: aoPressionar ?? () => pressionar(texto),
          style: ElevatedButton.styleFrom(
            backgroundColor: cor,
            foregroundColor: corTexto,
            elevation: 0,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              texto,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget linha(List<Widget> botoes) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: botoes,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const azul = Color(0xFF2196E3);
    const vermelho = Color(0xFFFF4B4B);
    const laranja = Color(0xFFFFA23A);
    const verde = Color(0xFF2EAD60);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFAEC5FF),
        actions: [
          IconButton(
            tooltip: 'Histórico',
            onPressed: widget.onOpenHistory,
            icon: const Icon(Icons.history),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
                color: const Color(0xFFDADADF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (expressao.isNotEmpty)
                      Text(
                        expressao,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                      ),
                    const SizedBox(height: 8),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        visor,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 54,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    linha([
                      botao('C', cor: vermelho),
                      botao('⌫', cor: laranja),
                      botao('÷', cor: azul, corTexto: Colors.white),
                    ]),
                    linha([
                      botao('7'),
                      botao('8'),
                      botao('9'),
                      botao('×', cor: azul, corTexto: Colors.white),
                    ]),
                    linha([
                      botao('4'),
                      botao('5'),
                      botao('6'),
                      botao('-', cor: azul, corTexto: Colors.white),
                    ]),
                    linha([
                      botao('1'),
                      botao('2'),
                      botao('3'),
                      botao('+', cor: azul, corTexto: Colors.white),
                    ]),
                    linha([
                      botao('0'),
                      botao(','),
                      botao('=', cor: verde, corTexto: Colors.white),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
