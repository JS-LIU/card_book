import 'package:card_book/store/oldies_goldies_store.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildStatelessWidget> providers = [
  ChangeNotifierProvider<OldiesButGoldiesStore>(
    create: (_) => OldiesButGoldiesStore(),
  )
];
