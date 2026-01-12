import 'package:flutter/material.dart';

class Tekrar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Yardımlaşma'))),
      body: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(3),
          child: Row(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text('Giriş Yap')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text('Çıkış yap')),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.access_alarm_outlined,
                    color: Colors.red,
                  ))
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_home_work_rounded), label: 'Arama'),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'Arama')
        ],
      ),
    );
  }
}
