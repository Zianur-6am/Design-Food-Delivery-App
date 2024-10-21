import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_food_delivery_app/features/home/controller/popularfood/popular_food_controller.dart';
import 'package:design_food_delivery_app/features/theme/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularFoodNearby extends StatelessWidget {

  PopularFoodController popularFoodController = Get.find();

  PopularFoodNearby({super.key});

  @override
  Widget build(BuildContext context) {
    // print('==================================+>>>>>>>${popularFoodController.productList.length}');
    return GetBuilder(
      builder: (PopularFoodController popularFoodController) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popularFoodController.productList.length,
            itemBuilder: (context, index) {
          return SizedBox(
            width: 200,
            child: Card(
              color: Get.find<ThemeController>().darkTheme ? Theme.of(context).cardColor : Theme.of(context).cardColor,
              child: Column(
                children: [
                  Expanded(
                      flex: 5,
                      child: ClipRRect(
                        child: CachedNetworkImage(
                          width: 200,
                          fit: BoxFit.fill,
                          imageUrl: popularFoodController.productList[index].imageFullUrl.toString(),
                          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              '${popularFoodController.productList[index].name}',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,),
                          ),

                          Expanded(
                            child: Text(
                              '${popularFoodController.productList[index].restaurantName}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black38,
                              ),
                              overflow: TextOverflow.ellipsis,),
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                    child: Text(
                                      '\$${popularFoodController.productList[index].price}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,),
                                  ),
                                ],),
                              ),


                              Expanded(
                                child: Container(),
                              ),

                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                
                                  Expanded(
                                    child: Text(
                                      '${popularFoodController.productList[index].avgRating?.toStringAsFixed(1)}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],),
                              ),


                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
