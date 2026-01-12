import 'package:flutter_application_1/Tekrarlar/Tekrar8/Markets.dart';

Future<List<String>> marketItems(Market market) async {
  print("call marketItems");
  await Future.delayed(Duration(seconds: 2));
  if (market == Market.blueMarket) {
    return ["Tereyağı", "Kefir", "Yumurta"];
  } else if (market == Market.greenMarket) {
    return ["Marul", "Domates"];
  }
  return [];
}
