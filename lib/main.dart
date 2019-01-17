import 'package:fab_botnav/fabbottomappbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static int tabSelectedIndex = 0;

  @override
  _MyHomePageState createState() => _MyHomePageState(tabSelectedIndex);
}

class _MyHomePageState extends State<MyHomePage> {
  String _lastSelected = 'First';

  _MyHomePageState(this.tabSelectedIndex);
  int tabSelectedIndex;

  void updateState(int tabSelectedIndex) {
    if (tabSelectedIndex == 0) {
      setState(() {
        _lastSelected = 'First';
      });
    } else if (tabSelectedIndex == 1) {
      setState(() {
        _lastSelected = 'Second';
      });
    } else if (tabSelectedIndex == 2) {
      setState(() {
        _lastSelected = 'Third';
      });
    } else if (tabSelectedIndex == 3) {
      setState(() {
        _lastSelected = 'Fourth';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLutter botnav demo'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'A',
        color: Colors.grey,
        selectedColor: Colors.blue,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: updateState,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
      body: new Center(
        child: Text(_lastSelected, style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
