class Model {
  Token? token;

  Model({this.token});

  Model.fromJson(Map<String, dynamic> json) {
    token = json['token'] != null ? new Token.fromJson(json['token']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.token != null) {
      data['token'] = this.token!.toJson();
    }
    return data;
  }
}

class Token {
  Sude? sude;

  Token({this.sude});

  Token.fromJson(Map<String, dynamic> json) {
    sude = json['sude'] != null ? new Sude.fromJson(json['sude']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sude != null) {
      data['sude'] = this.sude!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return "${sude!.kullaniciAdi}";
  }
}

class Sude {
  int? id;
  Konumlari? konumlari;
  String? kullaniciAdi;

  Sude({this.id, this.konumlari, this.kullaniciAdi});

  Sude.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    konumlari = json['konumlari'] != null
        ? new Konumlari.fromJson(json['konumlari'])
        : null;
    kullaniciAdi = json['kullanici_adi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.konumlari != null) {
      data['konumlari'] = this.konumlari!.toJson();
    }
    data['kullanici_adi'] = this.kullaniciAdi;
    return data;
  }
}

class Konumlari {
  String? home;
  String? okul;

  Konumlari({this.home, this.okul});

  Konumlari.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    okul = json['okul'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['home'] = this.home;
    data['okul'] = this.okul;
    return data;
  }
}
