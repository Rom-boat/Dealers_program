import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../material/material.dart';
import '../bottom_navigator_screen/list_widget.dart';
import '../bottom_navigator_screen/news.dart';
import '../bottom_navigator_screen/profile_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);
  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectorTab = 1;
  static const List<Widget> _widgetOption = <Widget>[
    NewsWidget(),
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
        title: const Text('Mercedes'),
        backgroundColor: UIConstants.myColor,
      ),
      body: Center(
        child: _widgetOption[_selectorTab],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        color: Colors.grey,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.grey.shade700,
        index: _selectorTab,
        items: [
          Icon(
            Icons.newspaper_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
