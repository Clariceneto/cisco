
import 'package:flutter_application_1/data_object/filme.dart';
import 'dart:convert';
import 'package:flutter_application_1/global.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class NetFlixInfor {
  List<Filme> filmes = [];
  int filmeId = 0;
  late Filme currentFilme;
  

  Future<void> getFilmes() async {
    var url = Uri.parse("${Globals.apiUrl}/filmes");
    var response = await http.get(url);

    filmes.clear();
    List<dynamic> returnedFilmes = jsonDecode(response.body);
    for (var returnedFilme in returnedFilmes) {
      Filme f = Filme(
        id: returnedFilme['id'],
        nome: returnedFilme['nome'],
        desc: returnedFilme['desc'],
        url: returnedFilme['url'],
        price: returnedFilme['price'],
      );
      filmes.add(f);
    }
  }

    Future<void> getCurrentFilmes() async {
    var url = Uri.parse("${Globals.apiUrl}/filmes/$filmeId");
    var response = await http.get(url);

    var returnedFilme = jsonDecode(response.body);

      currentFilme = Filme(
        id: returnedFilme['id'],
        nome: returnedFilme['nome'],
        desc: returnedFilme['desc'],
        url: returnedFilme['url'],
        price: returnedFilme['price'],
      );
     
    }
  }

