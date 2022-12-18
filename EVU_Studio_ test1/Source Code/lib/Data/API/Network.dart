import 'package:dio/dio.dart';
import 'package:evu_studio_test1/Constants/Contstants.dart';

class DioNetwork {
  late Dio dio;

  DioNetwork() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: BaseUrl,
      receiveTimeout: 20 * 1000,
      connectTimeout: 20 * 1000,
      receiveDataWhenStatusError: true,
    );

    dio = Dio(baseOptions);
  }


 Future<List<dynamic>> getSamples() async{

  Response response =await dio.getUri(Uri.parse(BaseUrl));
  if(response.statusCode == 200){
     return response.data;
  }

  else{
    throw Exception("Couldn't get data , Code error: ${response.statusCode}");
  }
  }
}
