import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Rope',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: <Widget>[
          Icon(Icons.share),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'my_page',
            ),
            Text(
              'Next',
            ),
          ],
        ),
      ),
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
          else if (index == 2) Navigator.of(context).pushNamed('/room');
          else if (index == 3) Navigator.of(context).pushNamed('/alarm');
          else if (index == 4) Navigator.of(context).pushNamed('/my_page');
          else Navigator.of(context).pushNamed('/');
        },
      ),

    );
  }
}