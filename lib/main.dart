import 'package:aula5_oo_conta/conta.dart';
import 'package:aula5_oo_conta/conta_corrente.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MainApp());
  ContaCorrente cc1 = ContaCorrente('Claudio');
  print(cc1);
  cc1.depositar(500);
  print(cc1);

  ContaCorrente cc2 = ContaCorrente('Diogo');
  cc1.sacar(200);
  cc1.transferir(250, cc2);

  print(cc1);
  extrato(cc1.operacoes);
}

void extrato(operacoes) {
  for(var operacao in operacoes){
    print(operacao);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
