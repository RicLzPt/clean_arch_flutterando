import 'package:clean_arch_flutterando/layers/data/dtos/car_dto.dart';
import 'package:clean_arch_flutterando/layers/data/repositories/cars/get_cars_by_color_repository_impl.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/get_cars_by_color_repository_contract.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarsByColorRepositoryContract repository = GetCarByColorRepositoryImpl();
  test("Deve retornar uma instância CarDto", () {
    var result = repository("Branco");
    expect(result, isInstanceOf<CarDto>());
  });
}
