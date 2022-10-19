import 'package:app_puzzle/Utils.dart';
import 'package:app_puzzle/src/blocs/signup_bloc.dart';
import 'package:app_puzzle/src/resources/confirm-signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(SignUp());

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SignUpBloc bloc = new SignUpBloc();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController re_password = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
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
                child:
                    Utils.TextFieldWithStream('Tên', username, bloc.userStream),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: Utils.TextFieldWithStream_Pass(
                  'Mật khẩu',
                  password,
                  _showPass,
                  bloc.passStream,
                  onTapShowPass,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: Utils.TextFieldWithStream_Pass(
                  'Nhập lại mật khẩu',
                  re_password,
                  _showRePass,
                  bloc.re_PassStream,
                  onTapShowRePass,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 25),
                child: Utils.TextFieldWithStream(
                  'Email',
                  email,
                  bloc.emailStream,
                ),
              ),
              Utils.ButtonWithText(onSignInClicked, 'Xác nhận'),
              Padding(padding: EdgeInsets.all(77)),
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

  void onSignInClicked() {
    setState(() {
      if (bloc.isValidInfo(
          username.text, password.text, re_password.text, email.text)) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ConfirmSignUp()));
      }
    });
  }
}
