import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  const PageViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .19,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      // Como é um PageView e eu add a propriedade "physics: BouncingScrollPhysics()", ele tem esse efeito de carrosel.
      child: PageView(
        // ignore: prefer_const_constructors
        physics: BouncingScrollPhysics(),
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // ignore: prefer_const_constructors
          CardApp(),
          // ignore: prefer_const_constructors
          CardApp(),
          // ignore: prefer_const_constructors
          CardApp(),
        ],
      ),
    );
  }
}
