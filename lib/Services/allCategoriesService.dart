import 'package:storeapp/Helpers/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    
 // ignore: missing_required_param
 List<dynamic> data =await Api().get(url: '$baseURL/categories');
  
  return data;

  }
}
