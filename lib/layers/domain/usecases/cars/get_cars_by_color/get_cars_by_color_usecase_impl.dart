import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/get_cars_by_color_repository_contract.dart';
import 'package:clean_arch_flutterando/layers/domain/usecases/cars/get_cars_by_color/get_cars_by_color_usecase_contract.dart';

class GetCarByColorUseCaseImpl implements GetCarsByColorUsecaseContract {
  GetCarByColorUseCaseImpl(this._repository);

  final GetCarsByColorRepositoryContract _repository;

  @override
  CarEntity call(String color) {
    return _repository(color);
  }
}
