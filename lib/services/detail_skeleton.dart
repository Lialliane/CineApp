import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class DetailScreenSkeleton extends StatelessWidget {
  const DetailScreenSkeleton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return ListView.separated(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      separatorBuilder: ((context, index) => const SizedBox(width: 10,)),
      itemCount: 1,
      itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          getSkeleton(height: deviceSize.height*0.35, width: double.infinity),
          const SizedBox(height: 20,),
          getSkeleton(height: deviceSize.height*0.02, width: deviceSize.width*0.5),
          SizedBox(height: deviceSize.height*0.6),
          getSkeleton(height: deviceSize.height*0.02, width: deviceSize.width*0.5),
          SizedBox(height: deviceSize.height*0.6),
        ],
      );
    });
  }
  
  Widget getSkeleton({required double height,required double width}){
    return Shimmer(
        duration: const Duration(seconds: 2),
        color: Colors.black12.withOpacity(0.15),
        child : Container(
        height: height,
        width: width,
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
        ),
    )); 
  }
}

