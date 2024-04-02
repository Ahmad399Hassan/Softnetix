import 'package:mvvm_watherapp_with_apis_getx/Data/Network/api_services.dart';
import 'package:mvvm_watherapp_with_apis_getx/Resources/AppUrl/app_url.dart';


class HomeRepository
{
  static Future<dynamic> hitApi() async
  {
    var response = await ApiServices().getApi(AppUrl.url);
    return response;
  }
}