import 'package:flutter/material.dart';
import 'pages/tabs/home_tab.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Journey',
      home: new MyHomePage(title: 'Journey'),
      theme: Theme.of(context).copyWith(
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // TODO: IMPLEMENTAR MENU
            },
          ),
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // TODO: IMPLEMENTAR SEARCH
              },
            )
          ],
        ),
        body: TabBarView(
          children: [
            new Container(
              color: Colors.yellow,
            ),
            new Container(
              color: Colors.orange,
            ),
            new HomeTab(
              
            ),
            new Container(
              color: Colors.red,
            ),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.favorite_border),
            ),
            Tab(
              icon: new Icon(Icons.perm_identity),
            ),
            Tab(
              icon: new Icon(Icons.home),
            ),
            Tab(
              icon: new Icon(Icons.settings),
            )
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

