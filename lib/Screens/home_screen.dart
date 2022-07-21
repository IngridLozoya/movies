import 'package:flutter/material.dart';
import 'package:movies/providers/movies_provider.dart';
import 'package:movies/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    print(moviesProvider.dataMovies);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Lates movies'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Stack(
        children: [
          const Background(),
          SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.dataMovies),
              CustomSlider(movies: moviesProvider.dataPopular)
            ],
            ),
        ),
        ]
      )
    );
  }
}