import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rasing ___',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Rasing ___'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _level = 1;
  int _money = 0;

  void _incrementCounter() {
    setState(() {
      _money += _level;
    });
  }

  void _levelup() {
    setState(() {
      if (_money >= _level*10) {
        _money -= _level*10;
        _level += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        child:
        Column(
          children: <Widget>[
            Text(
              'Level',
            ),
            Text(
              '$_level',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'Money',
            ),
            Text(
              '$_money',
              style: Theme.of(context).textTheme.display1,
            ),
            Row(
              children: <Widget>[
//                FloatingActionButton(
//                  child: Icon(Icons.add),
//                  onPressed: _incrementCounter,
//                ),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: _levelup,
                ),
              ],
            ),
            Container(child: ),
          ],
        ),
        onTap: _incrementCounter,
      )
    );
  }
}
