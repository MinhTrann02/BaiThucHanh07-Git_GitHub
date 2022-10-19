import 'package:app_puzzle/src/resources/profile.dart';
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
    Widget _cloumn(String text, IconData icon, Color color, var clicked) {
      final kq = TextButton(
        onPressed: clicked,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 30,
              color: color,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: color,
              ),
            ),
          ],
        ),
      );
      return kq;
    }

    Widget _Expanded(Color color) {
      final kq = Expanded(
        child: Container(
          width: 100,
          height: 8,
          color: color,
        ),
      );
      return kq;
    }

    Widget _gridView(String text, Color colorBg, String icon) {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: colorBg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                color: Colors.white,
                width: 50,
                height: 50,
              ),
              SizedBox(height: 5),
              Text(
                text,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }

    /*Bảng màu*/
    var colorBlack54 = Colors.black38;
    var colorBlackARGB = Color.fromARGB(213, 0, 0, 0);
    /* */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 233, 248, 255),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Utils.StackHead(
                        '0',
                        'images/icon/icon-head/icon-star.png',
                        Color(0),
                      ),
                      Utils.StackHead(
                        '0',
                        'images/icon/icon-head/icon-money.png',
                        Colors.green,
                      ),
                      Utils.StackHead(
                        'Max',
                        'images/icon/icon-head/icon-heart.png',
                        Colors.green,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/logo/logo-app.png'),
                      backgroundColor: Color.fromARGB(255, 190, 243, 255),
                      radius: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'User Name',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 105, 223, 89),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Chơi',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _cloumn('Trang chủ', Icons.home, colorBlackARGB, tam),
                      _cloumn('Nhiệm vụ', Icons.event_note, colorBlack54, tam),
                      _cloumn('Bạn bè', Icons.people, colorBlack54, tam),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _Expanded(colorBlackARGB),
                    _Expanded(colorBlack54),
                    _Expanded(colorBlack54),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Expanded(
                    child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: (1 / .6),
                        ),
                        shrinkWrap: true,
                        children: [
                          _gridView(
                              'Giao đấu',
                              Color.fromARGB(255, 174, 174, 174),
                              'images/icon/icon-button/icon-fighting.png'),
                          _gridView(
                              'Bảng xếp hạng',
                              Color.fromARGB(255, 133, 179, 204),
                              'images/icon/icon-button/icon-cup.png'),
                          _gridView(
                              'Thưởng hàng ngày',
                              Color.fromARGB(255, 186, 120, 202),
                              'images/icon/icon-button/icon-giftbox.png'),
                          _gridView(
                              'Mini-games',
                              Color.fromARGB(255, 220, 128, 43),
                              'images/icon/icon-button/icon-minigame.png'),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          iconSize: 30,
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
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            opacity: 1.0,
            size: 45,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black54,
            opacity: 1.0,
            size: 30,
          ),
        ),
      ),
    );
  }

  void onProfileClicked() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Profile()));
    });
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

  void tam() {
    setState(() {});
  }
}
