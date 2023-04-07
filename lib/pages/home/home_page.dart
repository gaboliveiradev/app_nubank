import 'package:app_nubank/main.dart';
import 'package:app_nubank/pages/home/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.purple[800], // [800] Deixar a nossa cor um pouco mais escura.
      body: Stack(
        alignment: Alignment.topCenter,
        children: const <Widget>[
          MyAppBar(),
        ],
      ),
    );
  }
}
