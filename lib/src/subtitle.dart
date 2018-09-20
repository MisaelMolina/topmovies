import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '''Después de morir su padre, T'Challa regresa a su nación, Wakanda. Una vez allí, descubre que tiene un nuevo y terrible enemigo, y T'Challa asume la personalidad de Pantera Negra para salvar no solo al reino de Wakanda, sino a toda la humanidad.
        ''',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'Georgia',
          fontSize: 13.0,
        ),
      ),
    );
  }
}