import 'package:aula5_oo_conta/conta.dart';

class ContaCorrente extends Conta{
  ContaCorrente(super.titular);

  bool sacar(double valor){
    if(valor <= saldo){
      saldo -= valor;
      addHistoricoOp("Saída", valor);
      return true;
    }

    return false;
  }

  bool transferir(double valor, Conta contaDestino){ 
    if(sacar(valor)){
      contaDestino.depositar(valor);
      return true;
    }
    return false;
  }


}