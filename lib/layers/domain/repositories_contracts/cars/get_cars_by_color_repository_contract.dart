import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';

abstract class GetCarsByColorRepositoryContract {
  CarEntity call(String color);
}
