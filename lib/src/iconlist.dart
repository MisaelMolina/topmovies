import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 8.0,
      height: 2.0,
    );

    return DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.play_arrow, color: Colors.blue),
                Text('PLAY'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.share, color: Colors.blue),
                Text('SHARE'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.favorite, color: Colors.blue),
                Text('FAVORITE'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
