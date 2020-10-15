import 'package:card_book/models/card/abstract_side.dart';
import 'package:card_book/models/card/side_type.dart';
import 'package:card_book/models/card/detail_side.dart';
import 'package:flutter/cupertino.dart';

class CardItem with ChangeNotifier {
  CardItem({this.cardData})
      : abstractSide = AbstractSide(sideData:cardData["abstractSide"]),
        detailSide = DetailSide(sideData:cardData["detailSide"]);

  Map<String, dynamic> cardData;
  SideType activeSide;
  AbstractSide abstractSide;
  DetailSide detailSide;
  // AbstractSide _createAbstractSide() {
  //   return AbstractSide(sideData: cardData["abstractSide"]);
  // }

  // DetailSide _createDetailSide() {
  //   return DetailSide(sideData: cardData["detailSide"]);
  // }

  // AbstractSide getAbstractSide() {
  //   print(abstractSide);
  //   if (abstractSide != null) {
  //     return abstractSide;
  //   }
  //   return _createAbstractSide();
  // }

  // DetailSide getDetailSide() {
  //   if (detailSide != null) {
  //     return detailSide;
  //   }
  //   return _createDetailSide();
  // }
}
