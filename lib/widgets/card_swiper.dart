import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      color:  Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemHeight: size.height*0.4,
        itemWidth: size.width*0.6,
        itemBuilder: (_,int index){
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'args'),
            child: const ClipRRect(
              child: FadeInImage(
                placeholder: AssetImage('assets/placeholder.jpg'), 
                image: AssetImage('assets/image.jpg'),
                fit:BoxFit.cover
                ),
                
            ),
          );
        },
      ),
    );
  }
}