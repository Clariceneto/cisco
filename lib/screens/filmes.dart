import 'package:flutter_application_1/global.dart';
import 'package:flutter_application_1/widgets/filme_card.dart';
import 'package:flutter/material.dart';

class Filmes extends StatefulWidget {
  const Filmes({super.key});

  @override
  State<Filmes> createState() => _FilmesState();
}

class _FilmesState extends State<Filmes> {
  void showDetalhes(int filmeId) {
    Globals.service.filmeId = filmeId;
    Navigator.pushNamed(context, '/LoadDetalhes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      appBar: AppBar(
        title: const Text("Filmes"),
        backgroundColor: Colors.lightBlue[800],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Globals.service.filmes.length,
              itemBuilder: (context, index) => FilmeCard(
                filme: Globals.service.filmes[index],
                showDetalhes: (() {
                  showDetalhes(Globals.service.filmes[index].id);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
