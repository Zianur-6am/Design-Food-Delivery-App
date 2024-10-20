
import 'package:design_food_delivery_app/domain/models/category_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<CategoriesModel> categoryList = [];

  Future<void> getCategories() async {
    try {

      // Attempt to fetch categories
      List<CategoriesModel>? fetchedCategories = await HomeRepository.getCategory();

      // Ensure the list is not null before assigning
      if (fetchedCategories != null) {
        categoryList = fetchedCategories;
      } else {
        // Handle the case where no categories are returned
        categoryList = []; // Reset to empty list or handle accordingly
      }

      // Notify listeners that the state has changed
      update();

    } catch (e) {
      // Handle errors (e.g., network issues)
      print('Error fetching categories: $e');
    }
  }
}
