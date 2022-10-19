import 'package:app_puzzle/utils.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Hồ sơ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.access_time_filled),
                    label: 'Lịch sử',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Trang chủ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: 'Cửa hàng',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.menu),
                    label: 'Menu',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const List<Widget> _Tab = <Widget>[
    Text('Ho so'),
    Text('Lich su'),
    Text('Home'),
    Text('Cua hang'),
    Text('Menu'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
