import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      color:  Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK
      ),
    );
  }
}