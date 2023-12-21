import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/get_cars_by_color_repository_contract.dart';

abstract class GetCarsByColorUsecaseContract {
  GetCarsByColorUsecaseContract(GetCarsByColorRepositoryContract repository);
  CarEntity call(String color);
}
