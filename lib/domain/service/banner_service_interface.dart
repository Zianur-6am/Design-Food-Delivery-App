import 'package:design_food_delivery_app/domain/models/banner_model.dart';

abstract class BannerServiceInterface {
  Future<List<Banners>?> getBanner();
}