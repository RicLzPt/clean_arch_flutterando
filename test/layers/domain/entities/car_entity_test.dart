import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve ter uma entidade CarEntity', () {
    CarEntity entity = CarEntity(
      placa: 'ABC-1234',
      qtdPortas: 4,
      valor: 60000,
    );
    expect(entity, isInstanceOf<CarEntity>());
  });
  test('Deve ter qtdPortas igual a 4', () {
    CarEntity entity = CarEntity(
      placa: 'ABC-1234',
      qtdPortas: 4,
      valor: 60000,
    );
    expect(entity.qtdPortas, 4);
  });

  test('Deve dar exception', () {
    expect(() {
      CarEntity(
        placa: 'ABC-1234',
        qtdPortas: 4,
        valor: 160000,
      );
    }, throwsA(isA<Exception>()));
  });
}
