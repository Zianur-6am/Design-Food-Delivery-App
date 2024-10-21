import 'package:design_food_delivery_app/features/home/domain/models/popularfood/popular_food_model.dart';

abstract class PopularFoodServiceInterface {
  Future<List<Products>?> getPopularFood();
}