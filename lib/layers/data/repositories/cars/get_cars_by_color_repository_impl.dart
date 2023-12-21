import 'package:clean_arch_flutterando/layers/data/dtos/car_dto.dart';
import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_flutterando/layers/domain/repositories_contracts/cars/get_cars_by_color_repository_contract.dart';

class GetCarByColorRepositoryImpl implements GetCarsByColorRepositoryContract {
  @override
  CarEntity call(String color) {
    var json = {
      'dtoPlaca': "ABC1234",
      'dtoQtdPortas': 4,
      'dtoValor': 60000.00,
    };
    return CarDto.fromMap(json);
  }
}
