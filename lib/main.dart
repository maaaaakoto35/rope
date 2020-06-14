import 'package:flutter/material.dart';
import './new_page.dart' show NextPage;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
      // home: MyHomePage(title: 'Rope'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MyHomePage(title: 'Rope'),
        '/search': (context) => NextPage(),
        '/room': (context) => NextPage(),
        '/alarm': (context) => NextPage(),
        '/my_page': (context) => NextPage(),

      },
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: <Widget>[
          Icon(Icons.share),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_replace),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Room'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm),
            title: Text('Alarm'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('MyPage'),
          ),
        ],
        onTap: (int index) {
            print(index);
            if (index == 1) Navigator.of(context).pushNamed('/search');
            else if (index == 2) Navigator.of(context).pushNamed('/search');
            else Navigator.of(context).pushNamed('/');
        },
      ),
    );
  }
}
