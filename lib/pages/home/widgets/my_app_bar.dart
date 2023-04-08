import 'package:flutter/material.dart';

// Como não irei alterar nada em tempo de execução, utilizamos o StatelessWidget.
// Caso eu fosse alterar algo em tempo de execução, usariamos o StatelessFullWidget
class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({key, required this.showMenu, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          // Referente a StatusBar (Bateria, Wifi...)
          // Ou seja, dei um padding top exatamente da altura da nossa StatusBar
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.purple[800],
            // [Altura do AppBar] Responsividade no aplicativo, adaptavel para diferentes tamanho de telas.
            height: MediaQuery.of(context).size.height * .20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  // mainAxisAlignment: Centraliza os widget ao longo do eixo principal do container.
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Nubank_logo_2021.svg/2560px-Nubank_logo_2021.svg.png',
                      height: 35,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Gabriel Oliveira',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
