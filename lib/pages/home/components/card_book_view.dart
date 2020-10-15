import 'package:card_book/models/card/abstract_side.dart';
import 'package:card_book/models/card/detail_side.dart';
import 'package:card_book/models/card/show_mode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBookView extends StatefulWidget {
  const CardBookView({
    this.abstractSideInfo,
    this.detailSideInfo,
  });
  final AbstractSide abstractSideInfo;
  final DetailSide detailSideInfo;

  @override
  _CardBookViewState createState() => _CardBookViewState();
}

class _CardBookViewState extends State<CardBookView> {
  AbstractSide _abstractSideInfo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _abstractSideInfo = widget.abstractSideInfo;
  }

  Widget _sideView() {
    if (_abstractSideInfo.showMode == ShowMode.text) {
      return Container(
        child: Text('123'),
      );
    }
    return Container(
      child: Image(
        image: NetworkImage("https://img.500px.me/500px1022115887.jpg!p5"),
        width: 100.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black54, offset: Offset(2.0, 2.0), blurRadius: 4.0)
        ],
      ),
      child: Container(
        child: Image(
          image: NetworkImage("https://img.500px.me/500px1022115887.jpg!p5"),
          width: 250.0,
        ),
      ),
    );
  }
}
