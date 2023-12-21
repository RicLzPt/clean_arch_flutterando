import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/save_car_favorite_repository_contract.dart';
import 'package:clean_arch_flutterando/layers/domain/usecases/cars/save_car_favorite_usecase.dart/save_car_favorite_usecase_contract.dart';
import 'package:clean_arch_flutterando/layers/domain/usecases/cars/save_car_favorite_usecase.dart/save_car_favorite_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve salvar o carro com sucesso", () async {
    CarEntity carEntity = CarEntity(
      placa: 'ABC-1234',
      qtdPortas: 4,
      valor: 60000,
    );
    SaveCarFavoriteRepositoryContract repository =
        MockSaveCarFavoriteRepositoryImpl();
    SaveCarFavoriteUsecaseContract usecase =
        SaveCarFavoriteUsecaseImpl(repository);

    bool result = await usecase(carEntity);

    expect(result, true);
  });

  test("Deve salvar o carro com erro", () async {
    CarEntity carEntity = CarEntity(
      placa: 'ABC-1234',
      qtdPortas: 4,
      valor: 0,
    );
    SaveCarFavoriteRepositoryContract repository =
        MockSaveCarFavoriteRepositoryImpl();
    SaveCarFavoriteUsecaseContract usecase =
        SaveCarFavoriteUsecaseImpl(repository);

    bool result = await usecase(carEntity);

    expect(result, false);
  });
}

class MockSaveCarFavoriteRepositoryImpl
    implements SaveCarFavoriteRepositoryContract {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.valor > 0;
  }
}
