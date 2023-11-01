
import 'package:storeapp/Helpers/api.dart';
import 'package:storeapp/Models/productModel.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
  // ignore: missing_required_param
  List<dynamic> data   =  await Api().get(url: '$baseURL/products/category/$categoryName');

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
      }

      return productsList;
   
  }
}
