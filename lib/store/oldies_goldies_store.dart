import 'package:flutter/material.dart';
import 'package:card_book/models/card/card.dart';

class OldiesButGoldiesStore with ChangeNotifier {
  static final Map<String, OldiesButGoldiesStore> _cache =
      <String, OldiesButGoldiesStore>{};

  OldiesButGoldiesStore({
    this.cardListData,
  });
  Map<String, dynamic> cardListData;

  List<CardItem> oldiesGoldiesList = [];
  List<CardItem> _createOldiesButGoldiesList(cardListData) {
    for (int i = 0; i < cardListData["newCardList"].length; i++) {
      print(cardListData["newCardList"][i]);
      oldiesGoldiesList.add(
        CardItem(cardData: cardListData["newCardList"][i]),
      );
    }
    return oldiesGoldiesList;
  }

  void updateCardList(Map<String, dynamic> cardListData) {
    _createOldiesButGoldiesList(cardListData);
    notifyListeners();
  }
}
