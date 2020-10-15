import 'package:card_book/api/oldies_goldies_api.dart';
import 'package:card_book/store/oldies_goldies_store.dart';
import 'package:card_book/pages/home/components/card_book_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MutipleCardScrollView extends StatefulWidget {
  MutipleCardScrollView({
    @required this.type,
    this.name,
  });
  final String type;
  final String name;

  @override
  _MutipleCardScrollViewState createState() => _MutipleCardScrollViewState();
}

class _MutipleCardScrollViewState extends State<MutipleCardScrollView> {
  _getOldiesGoldiesList() async {
    OldiesButGoldiesStore oldiesButGoldiesStore =
        await OldiesGoldiesApi().getOldiesGoldies();
    OldiesButGoldiesStore pre = Provider.of<OldiesButGoldiesStore>(context, listen: false);
    pre.updateCardList(oldiesButGoldiesStore.cardListData);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget _pageViewList(BuildContext context) {
    final oldiesGoldiesStore =
        Provider.of<OldiesButGoldiesStore>(context, listen: false);
    List<CardBookView> cardItemNodes = [];
    oldiesGoldiesStore.oldiesGoldiesList.forEach((cardItem) => cardItemNodes.add(CardBookView()));
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(),
        children: cardItemNodes,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OldiesGoldiesApi>(
      create: (_) => OldiesGoldiesApi(),
      child: Container(
        child: Consumer<OldiesGoldiesApi>(
          builder: (_, model, child) {
            _getOldiesGoldiesList();
            return _pageViewList(context);
          },
        ),
      ),
    );
  }
}
// 多角度的思考问题
// 坚定不移的风险
