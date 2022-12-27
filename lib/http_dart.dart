import 'dart:convert';

import 'package:dart_core_http/models/model.dart';
import 'package:http/http.dart';

import "package:http/http.dart" as http;

class HttpDart implements MainFunction {
  String mainUrl = "http-examples-default-rtdb.firebaseio.com";

  @override
  // ignore: non_constant_identifier_names
  Future<Response> ApiGet() async {
    var url = Uri.https(mainUrl, ".json");

    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("succesfull");
      //print(response.bodyBytes);

      print(response.body);
    }

    return response;
  }

  @override
  Future ApiPost(Model model) async {
    // TODO: implement ApiPost
    var url = Uri.https(
      mainUrl,
      ".json",
    );
    var jsonValue = jsonEncode(model.toJson());

    // var reponse =  http.post(url, body: jsonValue).then((value) => value);
    var reponse = await http.post(url, body: jsonValue);
    if (reponse.statusCode == 200) {
      print(reponse.body.toString());

      return reponse;
    }
    return Future.value(-1);
    throw UnimplementedError();
  }

  @override
  // ignore: non_constant_identifier_names
  Future ApiDelete(String deleted) async {
    // TODO: implement ApiDelete
    var url = Uri.https(mainUrl, ".json");
    // -NKHtJJjSCXL-Yuc6ccD
    var response = await http.delete(url,
        body: jsonEncode({"name": "-NKHtJJjSCXL-Yuc6ccD"}));

    return response;
    throw UnimplementedError();
  }
}

abstract class MainFunction {
  // ignore: non_constant_identifier_names

  Future<Response> ApiGet();
  Future ApiPost(Model model);
  Future ApiDelete(String url);
}
