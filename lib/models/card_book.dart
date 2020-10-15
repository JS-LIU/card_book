
import 'package:card_book/models/card/card.dart';
import 'package:card_book/util/uploadPic.dart';

class CardBook with UploadPic{
  num cardBookId;

  String name,describe,bookImgPath;
  VisibleType visibleType = VisibleType.public;
  List cards = List<CardItem>();
  List tags = List<String>();
  CardBook.edit(this.cardBookId,this.name,this.describe,this.visibleType,[List<CardItem> cardList,List tags]);
  CardBook.create();


  CardItem createCard(index){
    CardItem card = new CardItem();
    this.cards.add(card);
    return card;
  }
  
  CardBook saveCardBook(){
    
  }
}
// flutter speed code
enum VisibleType{public,private}
