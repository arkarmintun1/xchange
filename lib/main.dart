import 'package:flutter/material.dart';
import "./pages/timeline.dart";
import "./pages/friends.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XChange',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'XChange'),
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.timeline)),
              Tab(icon: Icon(Icons.group)),
              Tab(icon: Icon(Icons.notifications)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TimelinePage(),
            FriendsPage(),
            Tab(icon: Icon(Icons.notifications)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("123"),
        ),
      ),
    );
  }
}
