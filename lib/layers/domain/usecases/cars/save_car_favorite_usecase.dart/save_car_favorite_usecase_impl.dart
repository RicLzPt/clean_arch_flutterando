import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/save_car_favorite_repository_contract.dart';
import 'package:clean_arch_flutterando/layers/domain/usecases/cars/save_car_favorite_usecase.dart/save_car_favorite_usecase_contract.dart';

class SaveCarFavoriteUsecaseImpl implements SaveCarFavoriteUsecaseContract {
  SaveCarFavoriteUsecaseImpl(this._saveCarFavoriteRepository);

  final SaveCarFavoriteRepositoryContract _saveCarFavoriteRepository;

  @override
  Future<bool> call(CarEntity carEntity) async {
    carEntity.checkCarValue();
    return await _saveCarFavoriteRepository(carEntity);
  }
}
