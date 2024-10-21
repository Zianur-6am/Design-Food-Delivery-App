import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_food_delivery_app/features/home/controller/categories/category_controller.dart';
import 'package:design_food_delivery_app/features/theme/controller/theme_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  CategoryController categoryController = Get.find();


  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (CategoryController controller) {
        // print('============================>>>>>>>>>>>>>>>>${categoryController.categoryList.length}');
        return ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: categoryController.categoryList.length,

            itemBuilder: (context, index){
             return Container(
               width: 80,
               child: Column(
                 children: [
                 Card(
                   elevation: 10,
                   color: Get.find<ThemeController>().darkTheme ? Theme.of(context).cardColor : Theme.of(context).cardColor,
                   //Use cacheImageNetwork here
                   child: CachedNetworkImage(
                     height: 60,
                     width: 60,
                     fit: BoxFit.contain,
                     imageUrl: categoryController.categoryList[index].imageFullUrl.toString(),
                     placeholder: (context, url) => Center(child: new CircularProgressIndicator()),
                     errorWidget: (context, url, error) => new Icon(Icons.error),
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 5),
                   child: Text(
                     '${categoryController.categoryList[index]!.name.toString()}',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: Get.find<ThemeController>().darkTheme ? Colors.white: Colors.black,
                     ),
                     overflow: TextOverflow.ellipsis,),
                 ),
               ],),
             );
            }
        );
      },
    );
  }
}

