
import 'package:design_food_delivery_app/domain/models/popular_food_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:get/get.dart';

class PopularFoodController extends GetxController {
  List<Products> productList = [];

  Future<void> getProduct() async {
    // try{
      List<Products>? fetchedList = await HomeRepository.getPopularFood();

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