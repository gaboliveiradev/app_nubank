import 'package:app_nubank/pages/home/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [800] Deixar a nossa cor um pouco mais escura.
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: const <Widget>[
          MyAppBar(),
        ],
      ),
    );
  }
}
