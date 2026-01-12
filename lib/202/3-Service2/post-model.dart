//Servisten veri çekme işlemi için  bu dersi işleyeceğim
//1-pubspac.yml a dio  paket eklentisini ekliyoruz.
//2-Postman programını indirim videodaki gibi servisten veri çekme put, create , delete , upgrade gibi işlemleri ekliyoruz
//3- Servis JsonPlaceHolder sitesindeki  örnek veri olan post altındaki bir tane  user verisini googlede json to dart deyip  açılan sayfada yapıştırıp  buraya ekliyoruz.

class PostModel2 {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel2({this.userId, this.id, this.title, this.body});

  PostModel2.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
