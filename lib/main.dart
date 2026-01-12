import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/1-text_learn_view.dart';
import 'package:flutter_application_1/101/17-List_generate.dart';
import 'package:flutter_application_1/101/24-page_view_builder_%C3%B6rnek.dart';
import 'package:flutter_application_1/101/28B-DropDownLearn.dart';
import 'package:flutter_application_1/101/29A-navigation_learn.dart';
import 'package:flutter_application_1/101/30-SharedPreferences.dart';
import 'package:flutter_application_1/101/30-navigate_detail_learn.dart';
import 'package:flutter_application_1/101/30-navigate_detail_learn2.dart';
import 'package:flutter_application_1/101/6-Tekrar2.dart';
import 'package:flutter_application_1/202/3-Service2/1-sevice_learn_v%C4%B0ew.dart';
import 'package:flutter_application_1/202/3-Service2/2-service_learn_view2.dart';

import 'package:flutter_application_1/202/3-service/Service_Learn_View2.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar1.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar10.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar11/Navigatior.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar2.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar3.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar4.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar5.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar6.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar7.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar9.dart';

import '101/10-Stateles_Learn.dart';
import '101/11-paddin_Learn.dart';
import '101/12-CircleAvatar.dart';
import '101/13-card_learn.dart';
import '101/14-image_Learn.dart';
import '101/17-list_tile_learn.dart';
import '101/18-colunm_row_learn.dart';
import '101/19-stack_learn.dart';
import '101/19-stack_learn2.dart';
import '101/2-container_sized_box.dart';
import '101/20-tekrar4.dart';
import '101/21-stack_demo.dart';
import '101/22-statefull_Learn.dart';
import '101/23-statfulL_Lern2.dart';
import '101/24-page_view.dart';
import '101/25-Tekrar5.dart';
import '101/25-statefull_live_cycle_learn.dart';
import '101/26-text_field_learn.dart';
import '101/27-list_View_Laern.dart';
import '101/28-list_view_Builder.dart';
import '101/29B-navigation_learn2.dart';
import '101/29B-navigation_learn3.dart';
import '101/3-Tekrar1.dart';
import '101/31-Tekrar10.dart';
import '101/31-Tekrar11.dart';
import '101/31-Tekrar12.dart';
import '101/31-Tekrar13.dart';
import '101/31-Tekrar6.dart';
import '101/31-Tekrar7.dart';
import '101/31-Tekrar8.dart';
import '101/31-Tekrar9.dart';
import '101/4-scaffold_learn.dart';
import '101/5-button_learn_view.dart';
import '101/7-appBar.dart';
import '101/8-icon_learn_view.dart';
import '101/9-color_learn.dart';
import '101/15-custom_widget_learn.dart';
import '101/16-indicator_learn.dart';
import '101/29B-navigation_learn.dart';
import '202/1-TekrarB1.dart';
import '202/1-tab_learn.dart';
import '202/2-SınıflarveModel.dart';
import '202/3-service/Service_Learn_View3.dart';
import '202/3-service/Service_post_learn_view.dart';
import 'demos(my)/1-my_collection_listbuilder.dart';
import 'demos/2-color_demos_view.dart';
import 'demos/1-note_demos_View.dart';
import 'demos/3-color_life_cycle_view.dart';
import 'demos/4-my_collection_demos_(listviewbuilder).dart';
import '202/3-service/Service_Learn_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //prijenin ana hatları MaterialApp da çiziliyor.

      title:
          'Flutter Demo', //başlık uygulamamızı alta aldığımızda aldığı isimdir.

      //Theme.dark bütün temanın rengini değiştirir koyu yapar .light ise beyaz yapar
      //8-Theme_learn_View
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              //bütün sayfaların temasında bu ayarları kullanır fakat bizayarları  sayfada değiştirirsek sayfadaki ayarları kullanır.
              centerTitle: true,
              backgroundColor: Colors.red,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.dark),
          //
          iconTheme: const IconThemeData(color: Colors.amber),
          //------------------------------
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Colors.white,
          ), //16- Indicator_LearnView  CircularProgressIndicator u düzenler

          listTileTheme: ListTileThemeData(
              contentPadding: EdgeInsets.zero // 17 dersteki  listTile düzenler
              )),

      home: NavigationLearn1(),
    );
  }
}


//6. VELİ HOCA 41.58 
//6. VELİ HOCAM 44.25 Companentleri Product ve core klaslarda custom olarak tanımlamak.17- ListTile dersinde uyguladık