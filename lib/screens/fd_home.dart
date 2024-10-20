import 'package:design_food_delivery_app/controllers/banner_controller.dart';
import 'package:design_food_delivery_app/controllers/category_controller.dart';
import 'package:design_food_delivery_app/controllers/food_campaign_controller.dart';
import 'package:design_food_delivery_app/controllers/popular_food_controller.dart';
import 'package:design_food_delivery_app/widget/banners.dart';
import 'package:design_food_delivery_app/widget/categories.dart';
import 'package:design_food_delivery_app/widget/food_campaign.dart';
import 'package:design_food_delivery_app/widget/popular_food_nearby.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FDHome extends StatefulWidget {
  @override
  State<FDHome> createState() => _FDHomeState();
}

class _FDHomeState extends State<FDHome> {
  // const FDHome({super.key});


  // CategoryController categoryController = Get.put(CategoryController());
  // FoodCampaignController foodCampaignController = Get.put(
  //     FoodCampaignController());
  // PopularFoodController popularFoodController = Get.put(
  //     PopularFoodController());
  // BannerController bannerController = Get.put(BannerController());

  CategoryController categoryController = Get.find();
  PopularFoodController popularFoodController = Get.find();
  FoodCampaignController foodCampaignController = Get.find();
  BannerController bannerController = Get.find();

  @override
  void initState() {
    // TODO: implement initState

    categoryController.getCategories();
    foodCampaignController.getFoodsCampaign();
    popularFoodController.getProduct();
    bannerController.getBannerList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.home,
              color: Colors.black38,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  '76,A eighth evenue, New York, US',
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                //search card
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              textInputAction: TextInputAction.go,
                              onSubmitted: (value) {},
                              decoration: InputDecoration(
                                hintText: "Search food or restaurent here.....",
                                hintStyle: TextStyle(color: Colors.black38),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.search,
                              color: Colors.black38,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //banner
              Banners(),
              SizedBox(
                height: 10,
              ),

              //categories
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(''),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.green,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 100,
                  child: Categories(),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //Popular Food Nearby
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Popular Food Nearby',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(''),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.green,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 200,
                  child: PopularFoodNearby(),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //Food Campaign
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Food Campaign',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(''),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.green,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 110,
                  child: FoodCampaign(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
