import 'package:design_food_delivery_app/utils/app_constants.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;


///You can use this Just need to modify the home_repository accordingly
class ApiClient {
  static var client = http.Client();
  static final appBaseUrl = AppConstants.baseUrl;

  static Future<dynamic> getResponse({required String particularUrl}) async {
    try {
      var response = await client.get(
          Uri.parse('${AppConstants.baseUrl}${AppConstants.categoryUri}'),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'zoneId': '[1]',
            'latitude': '23.735129',
            'longitude': '90.425614'
          });
      if (response.statusCode == 200) {
        return response;
      }
      else{
        return null;
      }
    } catch (e) {
      print('Error getting response $e');
    }
  }
}
