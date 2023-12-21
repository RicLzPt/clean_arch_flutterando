class CarEntity {
  final String placa;
  final int qtdPortas;
  final double valor;

  CarEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  }) {
    checkCarValue();
  }

  double get valorReal => valor * qtdPortas;

  checkCarValue() {
    if (valorReal > 500000) throw Exception("Carro muito caro");
  }
}
