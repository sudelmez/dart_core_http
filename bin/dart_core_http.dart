import 'package:dart_core_http/dart_core_http.dart' as dart_core_http;
import 'package:dart_core_http/http_dart.dart';
import 'package:dart_core_http/models/model.dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_core_http.calculate()}!');
  HttpDart httpDart = HttpDart();

  Model model = Model();
  Token token = Token();
  Sude sude = Sude();
  Konumlari konumlari = Konumlari();

  //httpDart.ApiGet();

  konumlari.home = "kirazli da ";
  konumlari.okul = "ytü de ";
  sude.id = 2;
  sude.kullaniciAdi = "Harun KURT";

  model.token = token;

  token.sude = sude;

  sude.konumlari = konumlari;

  //print(sude.toJson());
  //print(sude.kullaniciAdi);
  print(model.toJson());

  httpDart.ApiPost(model);
  httpDart.ApiDelete("deleted");
}
