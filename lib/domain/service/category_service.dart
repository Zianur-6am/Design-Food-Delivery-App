import 'package:design_food_delivery_app/domain/models/category_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/service/category_service_interface.dart';
import 'package:get/get.dart';

class CategoryService implements CategoryServiceInterface{
  HomeRepository homeRepository = Get.find();

  @override
  Future<List<CategoriesModel>?> getCategory() async {
    return await homeRepository.getCategory();
  }

}