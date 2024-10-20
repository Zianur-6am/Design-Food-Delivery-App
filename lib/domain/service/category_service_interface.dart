import 'package:design_food_delivery_app/domain/models/category_model.dart';

abstract class CategoryServiceInterface{
  Future<List<CategoriesModel>?> getCategory();
}