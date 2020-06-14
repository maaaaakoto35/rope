import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  int _currentIndex = 0;
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
              'alarm',
            ),
            Text(
              'Next',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
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
            icon: Icon(Icons.add_alarm, color: Colors.blue,),
            title: Text(
              'Alarm',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('MyPage'),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
        onTap: (int index) {
          // print(index);
          _currentIndex = index;
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