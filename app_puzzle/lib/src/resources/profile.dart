import 'package:flutter/material.dart';

void main() => runApp(Profile());

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Widget _container_stack(
        String text, String icon, Color add_color, var width, var height) {
      final kq = Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Image.asset(
            icon,
            width: width,
            height: height,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(72, 0, 0, 0),
            child: IconButton(
              icon: Icon(
                Icons.add_circle,
                color: add_color,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ],
      );
      return kq;
    }

    Widget _cloumn(String text, String icon, Color color) {
      final kq = TextButton(
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              width: 30,
              height: 30,
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

    Widget _cloumn2(String text, IconData icon, Color color) {
      final kq = TextButton(
        onPressed: () {},
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

    Widget _listView(String text, String text2, String icon) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Container(
          height: 100,
          color: Color.fromARGB(255, 216, 216, 216),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 250, 122, 113),
                    child: Image.asset(
                      icon,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    /*Bảng màu*/
    var color_black54 = Colors.black38;
    var color_black_ARGB = Color.fromARGB(213, 0, 0, 0);
    /* */
    //
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color.fromARGB(255, 182, 255, 170),
                              height: 165,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          color: Color.fromARGB(255, 233, 248, 255),
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  //
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _container_stack(
                                  '0',
                                  'images/icon/icon-head/icon-star.png',
                                  Color.fromARGB(0, 0, 0, 0),
                                  35,
                                  35),
                              _container_stack(
                                  '0',
                                  'images/icon/icon-head/icon-money.png',
                                  Colors.green,
                                  30,
                                  30),
                              _container_stack(
                                  'Max',
                                  'images/icon/icon-head/icon-heart.png',
                                  Colors.green,
                                  35,
                                  35),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 0, 30, 0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 55,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/logo/logo-app.png'),
                                    backgroundColor:
                                        Color.fromARGB(255, 190, 243, 255),
                                    radius: 50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 30, 110, 0),
                                child: Text(
                                  'User Name',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 28,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 23,
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 35, 0, 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _cloumn(
                                'Thành tích',
                                'images/icon/icon-button/icon-badge.png',
                                color_black_ARGB,
                              ),
                              _cloumn(
                                  'Thống kê',
                                  'images/icon/icon-button/icon-statistical.png',
                                  color_black54),
                              _cloumn(
                                  'Mua hàng',
                                  'images/icon/icon-button/icon-basket.png',
                                  color_black54),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _Expanded(color_black_ARGB),
                            _Expanded(color_black54),
                            _Expanded(color_black54),
                          ],
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                                _listView('Đại gia', 'Hoàn thành nạp lần đầu',
                                    'images/icon/icon-button/icon-badge.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 81,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 2, color: Colors.black12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _cloumn2('Hồ sơ', Icons.person,
                                    Color.fromARGB(213, 0, 0, 0)),
                                _cloumn2('Lịch sử', Icons.access_time_filled,
                                    Colors.black38),
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                                ),
                                _cloumn2('Cửa hàng', Icons.shopping_cart,
                                    Colors.black38),
                                _cloumn2('Menu', Icons.menu, Colors.black38),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 42,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Icon(
                          Icons.home,
                          color: Colors.black38,
                          size: 60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
