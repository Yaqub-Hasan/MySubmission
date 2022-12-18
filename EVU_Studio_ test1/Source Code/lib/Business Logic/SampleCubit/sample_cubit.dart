import 'package:bloc/bloc.dart';
import 'package:evu_studio_test1/Data/Repository/DioRepository.dart';
import 'package:meta/meta.dart';

import '../../Data/Models/SampleApi.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit({required this.dioRepository}) : super(SampleInitial());
  final DioRepository dioRepository;
  List<SampleApi> samples = [];

 List<SampleApi> getAllSamples(){
   dioRepository.getSamplesData().then((value) {
     samples = value;
     emit(SampleLoaded(samples: samples));
   });

   return samples;
 }


}
