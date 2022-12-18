import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({Key? key, required this.index, required this.allSamples}) : super(key: key);
  final int index;
  final List<dynamic> allSamples;

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontWeight: FontWeight.w400);
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.withOpacity(0.2)
      ),
      child:  Row(
        children: [
          SizedBox(width: 2.w,),
          ImagePart(),
          SizedBox(width: 2.w,),
          InformationPart(textStyle)
        ],
      ),
    );
  }

  Column InformationPart(TextStyle textStyle) {
    return Column(
          children: [
            SizedBox(height: 5.w,),
            Text("${allSamples[index].name!.first} ${allSamples[index].name!.last}"  , style: textStyle,),
            SizedBox(height: 5.w,),
            Text("${allSamples[index].gender} "  , style: textStyle,),
            SizedBox(height: 5.w,),
            Text("Famous sayings:"  , style: TextStyle(fontWeight: FontWeight.w500 , color: Colors.red),),
            Container(
              width: 40.w,
              child: Column(
                children: [
                  Text("${allSamples[index].sayings![0]}"  , style: TextStyle(fontWeight: FontWeight.w600))
                ],
              ),
            )
          ],
        );
  }

  Column ImagePart() {
    return Column(
          children: [
            SizedBox(height: 2.h,),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(allSamples[index].images!.main.toString() , fit: BoxFit.cover, width: 45.w , height: 45.h,),
            )
          ],
        );
  }
}
