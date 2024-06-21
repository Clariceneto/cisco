import 'package:flutter_application_1/services/net_infor_service.dart';

class Globals {
  static NetFlixInfor service = NetFlixInfor();
   static String baseUrl = "http://127.0.0.1:8000";
    static String apiUrl = "$baseUrl/api";
     static String nextRouter = "/Filmes";
}
