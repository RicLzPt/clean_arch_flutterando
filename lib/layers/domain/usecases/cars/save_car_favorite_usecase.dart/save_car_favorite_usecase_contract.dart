import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/save_car_favorite_repository_contract.dart';

abstract class SaveCarFavoriteUsecaseContract {
  SaveCarFavoriteUsecaseContract(SaveCarFavoriteRepositoryContract repository);
  Future<bool> call(CarEntity carEntity);
}
