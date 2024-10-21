
import 'package:design_food_delivery_app/domain/models/popular_food_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/service/popular_food_service_interface.dart';
import 'package:get/get.dart';

class PopularFoodController extends GetxController {
  List<Products> productList = [];
  PopularFoodServiceInterface popularFoodServiceInterface;

  PopularFoodController({required this.popularFoodServiceInterface});

  Future<void> getProduct() async {
    // try{
      List<Products>? fetchedList = await popularFoodServiceInterface.getPopularFood();

      if(fetchedList != null){
        productList = fetchedList;
      }
      else{
        productList = [];
      }

      update();

    // }catch(e){
    //   print('Error fetching popular foods: $e');
    // }
  }

}