

import 'package:design_food_delivery_app/features/home/domain/models/banner/banner_model.dart';

abstract class BannerServiceInterface {
  Future<List<Banners>?> getBanner();
}