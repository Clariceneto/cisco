import 'package:flutter/material.dart';
import 'package:flutter_application_1/data_object/filme.dart';
import 'package:flutter_application_1/global.dart';

class FilmeCard extends StatelessWidget {
  final Filme filme;
  final Function() showDetalhes;

  const FilmeCard({
    required this.filme,
    required this.showDetalhes,
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final String myUrl = "${Globals.baseUrl}${filme.url}";
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          "${filme.nome} €${filme.price}",
          style:TextStyle(
            fontSize:30,
            fontWeight:FontWeight.bold,
            color:Colors.green[800],
          ),
          ),
        leading:CircleAvatar(
        backgroundImage: NetworkImage(myUrl),
        ),
        onTap: showDetalhes,
      ),
    );
  }
  
  
}
