import 'package:flutter/material.dart';
import '../bottom_navigator_screen/list_widget.dart';
import '../bottom_navigator_screen/profile_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);
  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectorTab = 1;
  static const List<Widget> _widgetOption = <Widget>[
    Text('_'),
    CarListWidgets(),
    UserProfileWidget()
  ];

  void onSelectTab(int index) {
    if (_selectorTab == index) return;
    setState(
      () {
        _selectorTab = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Головний екран'),
        backgroundColor: Color.fromARGB(214, 0, 0, 0),
      ),
      body: Center(
        child: _widgetOption[_selectorTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectorTab,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Форум',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Головна',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Профіль',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
