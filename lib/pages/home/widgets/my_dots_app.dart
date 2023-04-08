import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  const MyDotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: Colors.white,
            // Formato do Container.
            shape: BoxShape.circle,
          ),
        ),
        // SizedBox: Usado neste caso, para dar espaçamento entre os containers.
        SizedBox(
          width: 8,
        ),
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: Colors.white,
            // Formato do Container.
            shape: BoxShape.circle,
          ),
        ),
        // SizedBox: Usado neste caso, para dar espaçamento entre os containers.
        SizedBox(
          width: 8,
        ),
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: Colors.white,
            // Formato do Container.
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
