import 'package:storeapp/Helpers/api.dart';
import 'package:storeapp/Models/productModel.dart';

class UpdateProductService {
  Future<ProductModel> updateProductService(
      {required int id,
      required String desc,
      required String title,
      required String price,
      required String image,
      required String category}) async {
    print(
      'product id  = $id',
    );
    Map<String, dynamic> data =
        // ignore: missing_required_param
        await Api().put(url: '$baseURL/products/$id', body: {
      'title': title,
      'price': price,
      'image': image,
      'description': desc,
      'category': category,
    });

    return ProductModel.fromJson(data);
  }
}
