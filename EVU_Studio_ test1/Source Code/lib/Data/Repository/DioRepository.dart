import 'package:evu_studio_test1/Data/API/Network.dart';
import 'package:evu_studio_test1/Data/Models/SampleApi.dart';

class DioRepository {

  final DioNetwork dioNetwork;
  DioRepository({required this.dioNetwork});

  Future<List<SampleApi>> getSamplesData() async {
    final element = await dioNetwork.getSamples();
    return element.map((e) => SampleApi.fromJson(e)).toList();
  }
}
