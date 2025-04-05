import 'package:aula5_oo_conta/conta.dart';

class ContaInvestimento extends Conta{
  String nomeInv = "";
  double _indReaj = 0;

  ContaInvestimento(this._indReaj, super.titular);

  void reajustar(){
    saldo *= _indReaj;
  }
}