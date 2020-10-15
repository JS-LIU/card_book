import 'package:card_book/pages/main/main_page.dart';
import 'package:flutter/material.dart';

import 'api/provider_setup.dart';
import 'package:provider/provider.dart';
void main() => runApp(
      MultiProvider(
        providers: providers,
        child: CardBookApp(),
      ),
    );

class CardBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(title: "卡书", home: MainPage()),
    );
  }
}
