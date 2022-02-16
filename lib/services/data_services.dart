import 'package:flutter_cubit/model/document.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";

  Future<List<Document>> getData() async {
    var apiUrl = "/getplaces";
    http.Response response = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        return list.map((e) => Document.fromJson(e)).toList();
      } else {
        return <Document>[];
      }
    } catch (e) {
      print(e);
      return <Document>[];
    }
  }
}
