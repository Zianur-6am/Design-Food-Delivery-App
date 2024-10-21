import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_food_delivery_app/features/home/controller/foodcampaign/food_campaign_controller.dart';
import 'package:design_food_delivery_app/features/theme/controller/theme_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class FoodCampaign extends StatelessWidget {

  FoodCampaignController foodCampaignController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (FoodCampaignController foodCampaignController){
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodCampaignController.foodCampaignList.length,
            itemBuilder: (context, index){
              return SizedBox(
                height: 110,
                width: 250,
                child: Card(
                  color: Get.find<ThemeController>().darkTheme ? Theme.of(context).cardColor : Theme.of(context).cardColor,
                  child: Row(children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              height: 80,
                              imageUrl: foodCampaignController.foodCampaignList[index].imageFullUrl.toString(),
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(child: new CircularProgressIndicator()),
                              errorWidget: (context, url, error) => new Icon(Icons.error),

                            ),
                          ),
                        )
                    ),

                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                '${foodCampaignController.foodCampaignList[index].name}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            Expanded(
                              child: Text(
                                '${foodCampaignController.foodCampaignList[index].restaurantName}',
                                style: TextStyle(
                                    fontSize: 10,
                                  color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black38,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: Colors.green, size: 14,),
                                Icon(Icons.star, color: Colors.green, size: 14,),
                                Icon(Icons.star, color: Colors.green, size: 14,),
                                Icon(Icons.star, color: Colors.green, size: 14,),
                                Icon(Icons.star, color: Colors.green, size: 14,),
                              ],),

                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: Text('\$${foodCampaignController.foodCampaignList[index].price}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,)
                                        ),

                                        Text(
                                          '\$${foodCampaignController.foodCampaignList[index].discount}',
                                          style: TextStyle(
                                              color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black38,
                                              decoration: TextDecoration.lineThrough
                                          ),
                                        ),
                                      ],),
                                  ),

                                  Expanded(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.add),
                                    ],
                                  )),
                                ],),
                            )
                          ],),
                      ),
                    )
                  ],),
                ),
              );
            }
        );
      },
    );
  }
}
