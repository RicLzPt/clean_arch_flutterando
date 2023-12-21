import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';

/*
O DTO é independente do Entity, pois ele conversa com a API ou DB e o Entity é puro
e não conhece nada fora dele. 
*/
class CarDto extends CarEntity {
  final String dtoPlaca;
  final int dtoQtdPortas;
  final double dtoValor;

  CarDto({
    required this.dtoPlaca,
    required this.dtoQtdPortas,
    required this.dtoValor,
  }) : super(placa: dtoPlaca, qtdPortas: dtoQtdPortas, valor: dtoValor);

  Map toMap() => {
        'dtoPlaca': dtoPlaca,
        'dtoQtdPortas': dtoQtdPortas,
        'dtoValor': dtoValor,
      };

  static CarDto fromMap(Map<String, dynamic> map) => CarDto(
        dtoPlaca: map['dtoPlaca'],
        dtoQtdPortas: map['dtoQtdPortas'],
        dtoValor: map['dtoValor'],
      );
}
