class Conta{
  //Declarar como private => iniciar com "_" e public (padrão)
  double saldo = 0;
  String titular = "";
  List<String> _operacoes = [];
  
  Conta(this.titular);

  get operacoes => _operacoes;
  
  set operacoes(operacoes){
    _operacoes = operacoes;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Saldo: ${saldo} - Titular: ${titular}";
  }

  void depositar(double valor){
    saldo += valor;
  }

  void addHistoricoOp(String operacao, double valor){
    _operacoes.add("Operação: $operacao - Valor: $valor - Data: ${DateTime.now()}");
  }
}