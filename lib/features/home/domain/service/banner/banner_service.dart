
import 'package:design_food_delivery_app/features/home/domain/models/banner/banner_model.dart';
import 'package:design_food_delivery_app/features/home/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/banner/banner_service_interface.dart';

class BannerService implements BannerServiceInterface {
  HomeRepositoryInterface homeRepositoryInterface;

  BannerService({required this.homeRepositoryInterface});

  @override
  Future<List<Banners>?> getBanner() async {

    return await homeRepositoryInterface.getBanner();
  }

}