import 'package:flutter/material.dart';
import '../services/Showing now.dart';


class ShowingNowList extends StatelessWidget {
  const ShowingNowList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            iconTheme: const IconThemeData(
              color: Color(0xffdd204a),
            ),
            backgroundColor: const Color(0xfff1f1f1),
            floating: true,
            snap: true,
            centerTitle: true,
            title: const Text(
              'Showing now',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xff4b4a4a),
              ),
            ),
          ),
        ],
        body: Container(
          color: const Color(0xfff1f1f1),
          padding: const EdgeInsets.all(16.0),
          child: const SingleChildScrollView(
            child: ShowingListAll(),
          ),
        ),
      ),
    );
  }
}
