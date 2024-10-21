
import 'package:design_food_delivery_app/features/home/domain/models/categories/category_model.dart';

abstract class CategoryServiceInterface{
  Future<List<CategoriesModel>?> getCategory();
}