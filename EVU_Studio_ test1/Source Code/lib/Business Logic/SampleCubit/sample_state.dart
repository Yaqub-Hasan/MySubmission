part of 'sample_cubit.dart';

@immutable
abstract class SampleState {}

class SampleInitial extends SampleState {}

class SampleLoaded extends SampleState{

  final List<SampleApi> samples;

  SampleLoaded({required this.samples});
}
