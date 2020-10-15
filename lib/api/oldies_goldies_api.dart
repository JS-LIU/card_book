import 'package:card_book/store/oldies_goldies_store.dart';
import 'package:card_book/util/request.dart';
import 'package:flutter/material.dart';

class OldiesGoldiesApi with ChangeNotifier{

  static final server = ""; 

  Request _request = Request(server:server);

  static Future getCardList() async{
    return await OldiesGoldiesApi()._request.get('/newCardData');
  }

  Future<OldiesButGoldiesStore> getOldiesGoldies() async{
    var response = await _request.get('/newCardData');
    return OldiesButGoldiesStore(cardListData: response.data);
  }
}