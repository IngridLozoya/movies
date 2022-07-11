import 'package:flutter/material.dart';
import 'package:movies/widgets/card_swiper.dart';
import 'package:movies/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Lates movies'),
        actions: [
          IconButton(
            onPressed: (){

            }, 
            icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Background(),
            CardSwiper()
          ],
          ),
      )
    );
  }
}