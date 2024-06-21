import 'package:flutter_application_1/global.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupService() async {
    if (Globals.nextRouter == "/Filmes") {
      await Globals.service.getFilmes();
    } else if (Globals.nextRouter == "/Detalhes") {
      await Globals.service.getCurrentFilmes();
    }
    finishLoading();
  }

  void finishLoading() {
    Navigator.pushReplacementNamed(context, Globals.nextRouter);
  }

  void initSate() {
    super.initState();
    setupService();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[300],
      body:const Center(
        child: SpinKitCircle(
          color: Colors.red,
          size: 100,
        ),
      ) ,
    );
  }
}
