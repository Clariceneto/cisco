import 'package:flutter/material.dart';
import 'package:flutter_application_1/global.dart';
import 'package:flutter_application_1/screens/detalhes.dart';
import 'package:flutter_application_1/screens/filmes.dart';
import 'package:flutter_application_1/screens/loading.dart';

void main() {
  runApp(
    MaterialApp(routes: {
      '/': (context) => const Loading(),
      '/Filmes':(context) => const Filmes(),
      '/Detalhes':(context) => const Detalhes(),
      'LoadingDetalhes':(context){
        Globals.nextRouter = '/Detalhes';
        return const Loading();
      },
    },
    ),
  );
}
