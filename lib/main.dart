import 'package:flutter/material.dart';
import 'src/iconlist.dart';
import 'src/rating.dart';
import 'src/subtitle.dart';
import 'src/titletext.dart';

void main() => runApp(App());

// Custom Widget Sin Estado Principal o Raiz
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(
        titulo: 'Top Movies 2018',
      ),
      title: 'Titulo Principal',
      theme: ThemeData(
        primarySwatch: Colors.lightGreenAccent[500],
      ),
    );
  }
}

// Custom Widget Con Estado
class Home extends StatefulWidget {
  Home({Key key, this.titulo}) : super(key: key);

  final String titulo;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var mainImage = Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
        child: Image.asset(
          'images/blackpanter.jpg',
        ),
      ),
    );

    var leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
      child: Column(
        children: <Widget>[
          TitleText(),
          SubTitle(),
          Rating(),
          IconList(),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          height: 600.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 440.0,
                child: leftColumn,
              ),
              mainImage,
            ],
          ),
        ),
      ),
    );
  }
}
