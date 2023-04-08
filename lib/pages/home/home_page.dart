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
            top: _screnHeigth * .14,
            height: _screnHeigth * .55,
            left: 0,
            right: 0,
            child: PageView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
