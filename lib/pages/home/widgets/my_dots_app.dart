import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(0),
            // Formato do Container.
            shape: BoxShape.circle,
          ),
        ),
        // SizedBox: Usado neste caso, para dar espaçamento entre os containers.
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(1),
            // Formato do Container.
            shape: BoxShape.circle,
          ),
        ),
        // SizedBox: Usado neste caso, para dar espaçamento entre os containers.
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(2),
            // Formato do Container.
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
