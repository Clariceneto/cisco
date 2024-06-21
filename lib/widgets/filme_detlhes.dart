import 'package:flutter/material.dart';
import 'package:flutter_application_1/data_object/filme.dart';
import 'package:flutter_application_1/global.dart';

class FilmeDetalhes extends StatelessWidget {
  final Filme filme;
  

  const FilmeDetalhes({
    required this.filme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String myUrl = "${Globals.baseUrl}${filme.url}";
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          filme.nome,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue[800],
          ),
          ),
        const SizedBox(height: 10),
        CachedNetworkImage(
          imageUrl:myUrl,
          Placeholder:(context ,url)=> const CircularProgressIndicator(),
          ErrorWidget:(context,url,error)=>const Icon(Icons,error),
          heigth:300,
        ),
       
        const SizedBox(height: 10),
        Text(
          filme.desc,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          ),
        const SizedBox(height: 10),
        Text(
          " € ${filme.price.toString()}",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red[800], 
          ),
          )
      ],
    );
  }
}
