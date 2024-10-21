import 'package:get/get.dart';

class ThemeController extends GetxController implements GetxService{

  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  // String _lightMap = '[]';
  // String get lightMap => _lightMap;
  //
  // String _darkMap = '[]';
  // String get darkMap => _darkMap;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    update();
  }

  // void _loadCurrentTheme() async {
  //   _lightMap = await rootBundle.loadString('assets/map/light_map.json');
  //   _darkMap = await rootBundle.loadString('assets/map/dark_map.json');
  //   _darkTheme = await splashServiceInterface.loadCurrentTheme();
  //   update();
  // }
}