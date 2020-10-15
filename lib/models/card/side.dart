import 'package:card_book/models/card/show_mode.dart';
import 'package:card_book/util/uploadPic.dart';

class Side with UploadPic {
  Side({
    this.sideData,
  });
  Map<String, dynamic> sideData;

  int sideId;
  ShowMode showMode;
  String picUrl;
  String text;

  void setPicUrl(String filePath) {
    this.showMode = ShowMode.pic;
    this.picUrl = uploadPic(filePath);
  }

  void clearContent() {
    this.showMode = null;
    this.picUrl = null;
    this.text = null;
  }

  void setText(String text) {
    this.showMode = ShowMode.text;
    this.text = text;
  }
}
