import 'package:flutter/material.dart';
import 'package:shopee_clone/pages/beranda.dart';
import 'package:shopee_clone/pages/feed.dart';
import 'package:shopee_clone/pages/live.dart';
import 'package:shopee_clone/pages/notifikasi.dart';
import 'package:shopee_clone/pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shopee'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedIndex = 0;
  final _layoutPage =[
    Beranda(),
    Feed(),
    Live(),
    Notifikasi(),
    Profile()
  ];

  void _onTabItem(int index){
    setState(() {
      _seletedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _layoutPage.elementAt(_seletedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            title: Text('Feed')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.live_help),
            title: Text('Live')
          ), BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifikasi')
          ), BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _seletedIndex,
        onTap: _onTabItem,
      ),
     
    );
  }
}
