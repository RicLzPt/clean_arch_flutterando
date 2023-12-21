import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/get_cars_by_color_repository_contract.dart';
import 'package:clean_arch_flutterando/layers/domain/usecases/cars/get_cars_by_color/get_cars_by_color_usecase_contract.dart';
import 'package:clean_arch_flutterando/layers/domain/usecases/cars/get_cars_by_color/get_cars_by_color_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarByColorRepositoryImpl implements GetCarsByColorRepositoryContract {
  @override
  CarEntity call(String color) {
    return CarEntity(
      placa: "ABC1234",
      qtdPortas: 4,
      valor: 60000,
    );
  }
}

void main() {
  GetCarsByColorRepositoryContract repository = GetCarByColorRepositoryImpl();
  test("Deve retornar um CarEntity", () {
    GetCarsByColorUsecaseContract usecase =
        GetCarByColorUseCaseImpl(repository);
    var result = usecase("Branco");
    expect(result, isInstanceOf<CarEntity>());
  });

  test("Deve retornar um CarEntity com placa final 5", () {
    GetCarsByColorUsecaseContract usecase =
        GetCarByColorUseCaseImpl(repository);
    var result = usecase("Roxo");
    expect(result.placa, "ABC1234");
  });

  test("Deve retornar um CarEntity com placa final 4", () {
    GetCarsByColorUsecaseContract usecase =
        GetCarByColorUseCaseImpl(repository);
    var result = usecase("Vermelho");
    expect(result.placa, "ABC1234");
  });
}
