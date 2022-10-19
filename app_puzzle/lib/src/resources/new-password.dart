import 'package:app_puzzle/Utils.dart';
import 'package:app_puzzle/src/blocs/new-password_bloc.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(NewPassword());

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  NewPassWordBloc bloc = new NewPassWordBloc();
  TextEditingController newpassword = TextEditingController();
  TextEditingController re_newpassword = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Color.fromARGB(255, 233, 248, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Utils.Logo(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: Utils.TextFieldWithStream_Pass(
                  'Nhập mật khẩu mới',
                  newpassword,
                  _showPass,
                  bloc.newpassStream,
                  onTapShowPass,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 25),
                child: Utils.TextFieldWithStream_Pass(
                  'Nhập lại mật khẩu mới',
                  re_newpassword,
                  _showRePass,
                  bloc.re_PassStream,
                  onTapShowRePass,
                ),
              ),
              Utils.ButtonWithText(onConfirmClicked, 'Xác nhận'),
              Padding(padding: EdgeInsets.all(135)),
            ],
          ),
        ),
      ),
    );
  }

  bool _showPass = true;
  bool _showRePass = true;

  void onTapShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onTapShowRePass() {
    setState(() {
      _showRePass = !_showRePass;
    });
  }

  void onConfirmClicked() {
    setState(() {
      if (bloc.isValidInfo(newpassword.text, re_newpassword.text)) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }
}
