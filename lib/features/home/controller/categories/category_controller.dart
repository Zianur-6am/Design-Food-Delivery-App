
import 'package:design_food_delivery_app/features/home/domain/models/categories/category_model.dart';
import 'package:design_food_delivery_app/features/home/domain/service/categories/category_service_interface.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  List<CategoriesModel> categoryList = [];

  final CategoryServiceInterface categoryServiceInterface;

  CategoryController({required this.categoryServiceInterface});

  Future<void> getCategories() async {
    try {

      // Attempt to fetch categories
      List<CategoriesModel>? fetchedCategories = await categoryServiceInterface.getCategory();

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
