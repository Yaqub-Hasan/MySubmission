import 'package:evu_studio_test1/Business%20Logic/SampleCubit/sample_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../Data/Models/SampleApi.dart';
import '../Widgets/Character_Item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    BlocProvider.of<SampleCubit>(context).getAllSamples();
    super.initState();
  }

  ///Variables:
  late List<SampleApi> allSamples;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 2.w , right: 2.w , top: 5.h),
        height: double.infinity,
        width: double.infinity,
        child: BlocBuilder<SampleCubit , SampleState>(builder: (context , state){
          if(state is SampleLoaded){
            allSamples = state.samples;
            return ListView.separated(
               separatorBuilder: (context , index){
                 return SizedBox(height: 2.h,);
               },
                itemCount: allSamples.length,
                itemBuilder: (context , index){
                return CharacterItem(index: index, allSamples: allSamples,);
            });
          }
          else{
            return Center(child: CircularProgressIndicator(color: Colors.yellow,));
          }
        },),
      ),
    );
  }
}
