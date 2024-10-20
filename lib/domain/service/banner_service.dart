import 'package:design_food_delivery_app/domain/models/banner_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/domain/service/banner_service_interface.dart';

class BannerService implements BannerServiceInterface {
  @override
  Future<List<Banners>?> getBanner() async {
    HomeRepositoryInterface homeRepositoryInterface = HomeRepository();

    return await homeRepositoryInterface.getBanner();
  }

}