import 'package:app_nubank/pages/home/widgets/card_app.dart';
import 'package:app_nubank/pages/home/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

// StatelessWidget: Não há alteração dos widgets no decorrer da utilização do app.
// StatefulWidget: Pode haver mudanças de estados e informações no decorrer do uso do app.
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = false;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    double _screnHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      // [800] Deixar a nossa cor um pouco mais escura.
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          Positioned(
            top: _screnHeigth * .20,
            height: _screnHeigth * .45,
            left: 0,
            right: 0,
            // Como é um PageView e eu add a propriedade "physics: BouncingScrollPhysics()", ele tem esse efeito de carrosel.
            child: PageView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                CardApp(),
                CardApp(),
                CardApp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
