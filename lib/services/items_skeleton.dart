import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ItemSkeleton extends StatelessWidget {
  const ItemSkeleton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: ((context, index) => const SizedBox(width: 10,)),
      itemCount: 5,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getSkeleton(height: 190, width: 125),
            getSkeleton(height: 10, width: 100),
            getSkeleton(height: 10, width: 70)
          ],
        ),
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
          borderRadius: BorderRadius.circular(16),
        ),
    )); 
  }
}

class ItemSkeletonV extends StatelessWidget {
  final int length;
  const ItemSkeletonV({ Key? key, required this.length }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return ListView.separated(
      padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        separatorBuilder: ((context, index) => const SizedBox(width: 10,)),
        itemCount: length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSkeleton(height: 190, width: 120),
                getSkeleton(height: 30, width: width-210),
              ],
            ),
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
            borderRadius: BorderRadius.circular(16),
          ),
        ));
  }
}
