import 'package:flutter/material.dart';

class StatelesLearnView extends StatelessWidget {
  const StatelesLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //1-
          TitleTextWidget(
            text: 'Hakan',
          ),
          TitleTextWidget(text: 'Hakan1'),
          _emptyBox(), //3-ampülü tıklayıp extract method yaparsak  dışarıya metot olarak ekler.
          TitleTextWidget(text: 'Hakan2'),
          _CustomContainer() //2-ampülü tıklayıp  extract widget seçersek  main dışında oluşturur.
        ],
      ),
    );
  }

  //3-
  SizedBox _emptyBox() => SizedBox(height: 10);
}

//1- statelesWidget bir companenet  bir defa çizilecekse statelesWidget olarak bu şekilde kullanırız.
class TitleTextWidget extends StatelessWidget {
  @override
  const TitleTextWidget({super.key, required this.text});
  final String text; // String? yazıp consakcırdaki required i kaldırabiliriz.
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

//2-eğer bunu sadece bu sayfada kullanacaksak başına privata enlamına gelen _ atıyoruz.
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: Text('data'),
    );
  }
}
