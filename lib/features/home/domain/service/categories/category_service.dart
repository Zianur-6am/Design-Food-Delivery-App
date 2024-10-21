
import 'package:design_food_delivery_app/features/home/domain/models/categories/category_model.dart';
import 'package:design_food_delivery_app/features/home/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/categories/category_service_interface.dart';

class CategoryService implements CategoryServiceInterface{
  HomeRepositoryInterface homeRepositoryInterface;

  CategoryService({required this.homeRepositoryInterface});

  @override
  Future<List<CategoriesModel>?> getCategory() async {
    return await homeRepositoryInterface.getCategory();
  }

}