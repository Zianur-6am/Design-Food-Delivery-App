import 'package:design_food_delivery_app/domain/models/category_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/domain/service/category_service_interface.dart';
import 'package:get/get.dart';

class CategoryService implements CategoryServiceInterface{
  HomeRepositoryInterface homeRepositoryInterface;

  CategoryService({required this.homeRepositoryInterface});

  @override
  Future<List<CategoriesModel>?> getCategory() async {
    return await homeRepositoryInterface.getCategory();
  }

}