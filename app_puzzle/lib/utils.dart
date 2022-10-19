// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Utils {
  // ignore: non_constant_identifier_names
  static Icon IconWithColor(IconData ic, Color c) {
    return Icon(
      ic,
      color: c,
    );
  }

  //Logo
  static CircleAvatar Logo() {
    return CircleAvatar(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      radius: 100,
      child: Image.asset('images/logo/logo-app.png'),
    );
  }

  //Confirm
  static Row Confirm() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.refresh),
        ),
        const Text('Gửi lại mã sau 60s.'),
      ],
    );
  }

  ///TextFormField
  static StreamBuilder TextFieldWithStream(
      String text, TextEditingController ctrl, Stream bloc) {
    return StreamBuilder(
      stream: bloc,
      builder: (context, snapshot) => TextFormField(
        autofocus: true,
        controller: ctrl,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          errorText: snapshot.hasError ? (snapshot.error).toString() : null,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }

  ///TextFormField - Password
  static StreamBuilder TextFieldWithStream_Pass(String text,
      TextEditingController ctrl, bool obs, Stream bloc, var function) {
    return StreamBuilder(
      stream: bloc,
      builder: (context, snapshot) => TextFormField(
        autofocus: true,
        obscureText: obs,
        controller: ctrl,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: function,
              icon: Icon(obs ? Icons.visibility_off : Icons.visibility)),
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          errorText: snapshot.hasError ? (snapshot.error).toString() : null,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }

  //TextButton
  static TextButton TextButtonWithOnTap(String text, var function) {
    return TextButton(
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  //Button: Đăng nhập, đăng ký, xác nhận,....
  static Row ButtonWithText(var function, String text) {
    return Row(
      children: [
        Expanded(flex: 2, child: Container(height: 56)),
        Expanded(
          flex: 3,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 193, 254, 210),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(width: 1),
            ),
            child: TextButton(
              onPressed: function,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(flex: 2, child: Container(height: 56)),
      ],
    );
  }

  // //BottomNavigationBarItem
  // static BottomNavigationBarItem bottomNavigationBarItem(
  //     IconData icon, String? text) {
  //   return BottomNavigationBarItem(
  //     icon: Icon(
  //       icon,
  //       size: 30,
  //     ),
  //     label: text,
  //   );
  // }

  //Stack head
  static Stack StackHead(String text, String icon, Color addColor) {
    return Stack(
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
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
        Image.asset(
          icon,
          width: 30,
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(72, 0, 0, 0),
          child: IconButton(
            icon: Icon(
              Icons.add_circle,
              color: addColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
