import 'dart:convert';
import 'package:helloworld/model.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<Tesla_model> fetchDataTesla(dynamic s) async {
    String url = s == null
        ? "https://newsapi.org/v2/everything?q=tesla&from=2021-10-17&sortBy=publishedAt&apiKey=ac56456093c04d0aa2eec9c8c83b5271"
        : s;
    var reponse = await http.get(Uri.parse(url));
    if (reponse.statusCode == 200) {
      var jsonData = json.decode(reponse.body);
      print(jsonData);
      Tesla_model tl = TeslaFromJson(reponse.body);
      print(tl);
      return tl;
    } else {
      return throw Exception('Not data');
    }
  }
}