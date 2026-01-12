// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SiniflarveModel extends StatefulWidget {
  const SiniflarveModel({super.key});

  @override
  State<SiniflarveModel> createState() => _SiniflarveModelState();
}

class _SiniflarveModelState extends State<SiniflarveModel> {
  @override
  User user2 = User(body: 'a', id: 45);
  User2 user3 = User2(body: 'b', id: 55);

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          //1-user2 nin title sini değiştirmek için bu yöntemi inceleyelim
          user2 = User(
              title:
                  'on prassed and id: ${user2.id ?? 0}'); // butona basınca user2 yi değiştir yeni bir User atar ve appabarda  burdaki yazar
        }); //not: buradaki sıkıntı user2 id önceden 45 id fakat burada yeni userde  boş geldi .bunun önüne geçmek için
        // user 3 de bunu analatacağız

        setState(() {
          //  User2 clasındaki Generate CopyWith yöntemi sayesinde yukarıda daha önce oluşturulan user3 nesnesi değerleri(id, body )
          // burada kaybolmaz sadece değiştirdiğimz değer değişir(title);
          user3 = user3.copyWith(title: 'on prassed2 id: ${user3.id ?? 0}');
          user3.updateBody('b'); // body i veli olarak değiştirdik.
        });
      }),
      appBar: AppBar(
          title: Text(user2.title ??
              'Not have any date ')), //user2 title yaz boş ise ''Not have .... yaz --- title boş zaten

      body: Text(user3.title ?? 'Veri yok'),
    );
  }
}

class User {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  User({this.userId, this.id, this.title, this.body});
}

// generate copyWith yöntemi
class User2 {
  final int? userId;
  final int? id;
  final String? title;
  String?
      body; // body  dışarıda ilk kez oluşturulduktan sonra tekrar değiştirlebilriz.
  // ampülü tıklayıp Generate CopyWith diyoruz

  User2({this.userId, this.id, this.title, this.body});

  User2 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return User2(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  // body verisini günellemek için ;
  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      data = this.body;
    }
  }
}

void main(List<String> args) {
  final User user1 = User(body: 'a');
}
