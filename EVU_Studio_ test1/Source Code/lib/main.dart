import 'package:evu_studio_test1/Business%20Logic/SampleCubit/sample_cubit.dart';
import 'package:evu_studio_test1/Data/API/Network.dart';
import 'package:evu_studio_test1/Data/Repository/DioRepository.dart';
import 'package:evu_studio_test1/Presentation/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider<SampleCubit>(create: (context) =>
             SampleCubit(dioRepository: DioRepository(dioNetwork: DioNetwork())))
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomeScreen() ,
          );
        },
      )
    );
  }
}



