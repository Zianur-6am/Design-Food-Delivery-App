import 'package:design_food_delivery_app/domain/models/popular_food_model.dart';

abstract class PopularFoodServiceInterface {
  Future<List<Products>?> getPopularFood();
}