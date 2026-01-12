import 'package:flutter/material.dart';

enum Market { blueMarket, greenMarket }

extension MarketExt on Market {
  String get title {
    switch (this) {
      case Market.blueMarket:
        return 'Mavi Market';
      case Market.greenMarket:
        return 'Yeşil Market';
    }
  }

  Color get color {
    switch (this) {
      case Market.blueMarket:
        return Color(color.blue);
      case Market.greenMarket:
        return Color(color.green);
    }
  }
}
