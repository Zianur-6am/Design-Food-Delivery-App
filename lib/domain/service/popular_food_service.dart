import 'package:design_food_delivery_app/domain/models/popular_food_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/domain/service/popular_food_service_interface.dart';

class PopularFoodService implements PopularFoodServiceInterface {
  HomeRepositoryInterface homeRepositoryInterface;

  PopularFoodService({required this.homeRepositoryInterface});
  @override
  Future<List<Products>?> getPopularFood() async {
    return await homeRepositoryInterface.getPopularFood();
  }

}