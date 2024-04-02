import 'package:get/get.dart';
import 'package:mvvm_watherapp_with_apis_getx/ViewModel/Controller/home_controller.dart';

class SplashServices
{
  static void getApiData()
  {
    final controller = Get.put(HomeController());
    controller.getData();
  }
}