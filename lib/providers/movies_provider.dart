import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apikey = "2a6462c783f66d9881583171a400edcc"; //se supone que es indivudual, la solicitas iniciando sesion en themoviedb, configuracion API
  final String _baseURL = "api.themoviedb.org";
  final String _language = 'es-ES';

  List<dynamic> dataMovies = [];
  List<dynamic> dataPopular = [];

  MoviesProvider(){
    getMovies();
    getPopular();
    }

  getMovies() async {
    var url = Uri.https(_baseURL, '/3/movie/now_playing',
        {'api_key': _apikey, 'language': _language, 'page': "1"});

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      //print(jsonResponse);
      dataMovies = jsonResponse["results"];
      notifyListeners();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getPopular() async {
    var url = Uri.https(_baseURL, '/3/movie/popular',
        {'api_key': _apikey, 'language': _language, 'page': "1"});

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      //print(jsonResponse);
      dataPopular = jsonResponse["results"];
      notifyListeners();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
  
}
