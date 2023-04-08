import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final ValueChanged<int> onChanged;
  final double top;

  const PageViewApp({super.key, required this.onChanged, required this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      // Como é um PageView e eu add a propriedade "physics: BouncingScrollPhysics()", ele tem esse efeito de carrosel.
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
