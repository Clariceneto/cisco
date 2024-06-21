import 'package:flutter_application_1/global.dart';
import 'package:flutter_application_1/widgets/filme_detlhes.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({super.key});

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
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
            child:FilmeDetalhes(
              filme: Globals.service.currentFilme,
            ),
          ),
        ]),
    );
  }
}
