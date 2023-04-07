import 'package:flutter/material.dart';

// Como não irei alterar nada em tempo de execução, utilizamos o StatelessWidget.
// Caso eu fosse alterar algo em tempo de execução, usariamos o StatelessFullWidget
class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          // Referente a StatusBar (Bateria, Wifi...)
          // Ou seja, dei um padding top exatamente da altura da nossa StatusBar
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.purple[800],
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                // mainAxisAlignment: Centraliza os widget ao longo do eixo principal do container.
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://o.remove.bg/downloads/dc766ee7-beff-455d-b9b5-5434d170c3f5/nubank-96-removebg-preview.png',
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
              const Icon(Icons.expand_more)
            ],
          ),
        ),
      ],
    );
  }
}
