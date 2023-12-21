import 'package:clean_arch_flutterando/layers/domain/entities/car_entity.dart';

abstract class SaveCarFavoriteRepositoryContract {
  Future<bool> call(CarEntity carEntity);
}
